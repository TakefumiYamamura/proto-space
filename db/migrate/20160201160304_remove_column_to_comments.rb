class RemoveColumnToComments < ActiveRecord::Migration
  def change
    remove_column :comments, :comments_count, :integer
  end
end
