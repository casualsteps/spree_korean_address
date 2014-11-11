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
      order.present? and order.mock_total.to_f > 200
    end

end
