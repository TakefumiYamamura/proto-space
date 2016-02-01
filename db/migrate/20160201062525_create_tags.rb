class CreateTags < ActiveRecord::Migration
  def change
    create_table :tags do |t|
      t.references :prototype, index: true

      t.timestamps null: false
    end
  end
end
