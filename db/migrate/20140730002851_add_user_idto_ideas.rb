class AddUserIdtoIdeas < ActiveRecord::Migration
  def change
  	add_column :Ideas, :user_id, :integer
  end
end
