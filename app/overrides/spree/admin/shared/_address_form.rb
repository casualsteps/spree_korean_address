Deface::Override.new(
  :name => 'address_form',
  :virtual_path => 'spree/admin/shared/_address_form',
  :insert_bottom => "[data-hook='address_fields']",
  :text => "
    <div class='field billing-row'>
      <%= f.label :customs_no, Spree.t(:customs_no) %>
      <%= f.text_field :customs_no, :class => 'fullwidth' %>
    </div>
  ")
