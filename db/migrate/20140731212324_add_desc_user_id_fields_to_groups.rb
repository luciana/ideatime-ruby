class AddDescUserIdFieldsToGroups < ActiveRecord::Migration
  def change
    add_column :groups, :description, :text
    add_column :groups, :image, :string
    add_column :groups, :user_id, :integer
  end
end
