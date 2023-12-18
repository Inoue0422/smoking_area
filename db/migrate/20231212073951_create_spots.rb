class CreateSpots < ActiveRecord::Migration[7.0]
  def change
    create_table :spots do |t|
      t.string :name,        null: false
      t.integer :tobacco_id, null: false
      t.boolean :fence,      null: false
      t.boolean :roof,       null: false
      t.boolean :chair,      null: false
      t.float :latitude,     null: false
      t.float :longitude,    null: false
      t.timestamps
    end
  end
end
