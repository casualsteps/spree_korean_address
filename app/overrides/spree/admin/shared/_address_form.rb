Deface::Override.new(
  :name => 'address_form',
  :virtual_path => 'spree/admin/shared/_address_form',
  :insert_bottom => "[data-hook='address_fields']",
  :text => "
    <div class='field billing-row'>
      <%= f.label :customs_no, Spree.t(:customs_no) %>
      <%= f.text_field :customs_no, :class => 'fullwidth' %>
    </div>
    <div class='field billing-row'>
      <%= f.label :other_comment, Spree.t(:other_comment) %>
      <%= f.text_field :other_comment, :class => 'fullwidth' %>
    </div>",
 :original => 'd424a7538b7b067c012004aa0727f902458c78a9')
