class RenameImageToImages < ActiveRecord::Migration
  def change
    rename_column :images, :image, :avatar
  end
end
