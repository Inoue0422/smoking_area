class RemoveAddressFromSpots < ActiveRecord::Migration[7.0]
  def change
    remove_column :spots, :address, :string
  end
end
