class CreateSchedules < ActiveRecord::Migration[5.1]
  def change
    create_table :schedules do |t|
      t.references :spaceId, foreign_key: true
      t.references :userId, foreign_key: true
      t.references :vehicleId, foreign_key: true
      t.date :date
      t.string :startTime
      t.string :endTime
      t.integer :costSubscribed
      t.integer :discount
      t.integer :totalCost
      t.string :paymentMode

      t.timestamps
    end
  end
end
