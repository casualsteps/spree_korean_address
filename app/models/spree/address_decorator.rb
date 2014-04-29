Spree::Address.class_eval do
  ### Trying the below just makes my life miserable... Going to simply submit dummy data on the front-end.
#  _validators.reject!{ |key, value| key == :lastname }
#  _validate_callbacks.each do |callback|
#    callback.raw_filter.attributes.reject! { |key| key == :lastname || key == :country || key == :city } if callback.raw_filter.respond_to?(:attributes)
#  end

  validates :customs_no, presence: true

end
