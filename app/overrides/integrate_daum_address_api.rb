Deface::Override.new( :virtual_path => 'spree/address/_form',
                      :name         => 'integrate_daum_address_api',
                      :replace      => 'fieldset',
                      :partial      => 'spree/address/daum_address_api',
                      :disabled     => false)
Deface::Override.new( :virtual_path => 'spree/checkout/_address',
                      :name         => 'remove_find_zipcode_text',
                      :remove       => 'p#find_zipcode')
