class AddOtherCommentToSpreeAddress < ActiveRecord::Migration
  def change
    add_column :spree_addresses, :other_comment, :string
  end
end
