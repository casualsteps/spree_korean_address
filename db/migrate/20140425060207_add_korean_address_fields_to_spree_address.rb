class AddKoreanAddressFieldsToSpreeAddress < ActiveRecord::Migration
  def change
    add_column :spree_addresses, :customs_no, :string
    add_column :spree_addresses, :jumin_no, :string
    add_column :spree_addresses, :other_comment, :string
  end
end
