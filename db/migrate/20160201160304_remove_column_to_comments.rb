class RemoveColumnToComments < ActiveRecord::Migration
  def change
    remove_column :comments, :comment_count, :integer
  end
end
