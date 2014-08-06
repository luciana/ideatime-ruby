class AddIdeaIdFieldtoComments < ActiveRecord::Migration
  def change
  	add_column :Comments, :idea_id, :integer
  end
end
