class CreateParkingTypes < ActiveRecord::Migration[5.1]
  def change
    create_table :parking_types do |t|
      t.references :parkingId, foreign_key: true
      t.references :vehicleTypeId, foreign_key: true
      t.string :description

      t.timestamps
    end
  end
end
