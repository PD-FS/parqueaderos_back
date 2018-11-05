class CreateVehicles < ActiveRecord::Migration[5.1]
  def change
    create_table :vehicles do |t|
      t.string :license
      t.references :vehicleTypeId, foreign_key: true
      t.references :userId, foreign_key: true

      t.timestamps
    end
  end
end
