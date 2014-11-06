class AddIdeaIdFieldtoComments < ActiveRecord::Migration
  def change
  	add_column :comments, :idea_id, :integer
  end
end
