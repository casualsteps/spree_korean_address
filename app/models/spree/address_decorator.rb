Spree::Address.class_eval do
  ### Trying the below just makes my life miserable... Going to simply submit dummy data on the front-end.
#  _validators.reject!{ |key, value| key == :lastname }
#  _validate_callbacks.each do |callback|
#    callback.raw_filter.attributes.reject! { |key| key == :lastname || key == :country || key == :city } if callback.raw_filter.respond_to?(:attributes)
#  end

### This is no longer necessary – it's only required if the order is over $200
    validates :customs_no, presence: true, if: :order_over_200?

    def order_over_200?
      order = Spree::Order.where("bill_address_id = ? or ship_address_id = ?", self.id, self.id).order("created_at").last
      order.present? and order.tax_charge?
    end

 _validate_callbacks.each do |callback|
   callback.raw_filter.attributes.reject! { |key| key == :lastname || key == :address2 || key == :city } if callback.raw_filter.respond_to?(:attributes)
 end
 
  def format_customs_no
    return nil unless self.customs_no.present? 
    if self.customs_no.index('-').present?
      customs_no = self.customs_no.split("-")
      customs_no.second.gsub! customs_no.second[0..3], '****'
      customs_no = customs_no.join('-')
    else
      customs_no = self.customs_no.gsub! self.customs_no[0..3], '****'
    end
    customs_no
  end
  
 private
  def state_validate
    true
  end
end
