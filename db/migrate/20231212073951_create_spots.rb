class CreateSpots < ActiveRecord::Migration[7.0]
  def change
    create_table :spots do |t|
      t.string :name,        null: false
      t.integer :tobacco_id, null: false
      t.boolean :fence,      null: false
      t.boolean :roof,       null: false
      t.boolean :chair,      null: false
      t.string :address
      t.float :latitude
      t.float :longitude
      t.timestamps
    end
  end
end
