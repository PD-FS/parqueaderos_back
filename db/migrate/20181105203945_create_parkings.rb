class CreateParkings < ActiveRecord::Migration[5.1]
  def change
    create_table :parkings do |t|
      t.string :name
      t.string :typeDocument
      t.string :document
      t.string :address
      t.references :userId, foreign_key: true
      t.string :phone
      t.integer :movil
      t.integer :email
      t.string :latitude
      t.string :longitude
      t.string :serviceDays
      t.string :openingTime
      t.string :closingTime

      t.timestamps
    end
  end
end
