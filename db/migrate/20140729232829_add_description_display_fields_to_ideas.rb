class AddDescriptionDisplayFieldsToIdeas < ActiveRecord::Migration
  def change
    add_column :ideas, :description, :text
    add_column :ideas, :display, :string
  end
end
