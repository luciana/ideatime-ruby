class AddStarsBodyToComments < ActiveRecord::Migration
  def change
    add_column :comments, :stars, :integer
    add_column :comments, :body, :text
  end
end
