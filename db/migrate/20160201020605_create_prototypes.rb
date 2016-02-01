class CreatePrototypes < ActiveRecord::Migration
  def change
    create_table :prototypes do |t|
      t.string :title
      t.text :concept
      t.text :catch_copy
      t.integer :likes_count

      t.timestamps null: false
    end
  end
end
