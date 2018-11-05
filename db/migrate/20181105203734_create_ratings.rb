class CreateRatings < ActiveRecord::Migration[5.1]
  def change
    create_table :ratings do |t|
      t.string :parking
      t.references :parkingId, foreign_key: true
      t.references :userId, foreign_key: true
      t.date :date
      t.int :score
      t.string :observations

      t.timestamps
    end
  end
end
