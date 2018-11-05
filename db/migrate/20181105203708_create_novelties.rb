class CreateNovelties < ActiveRecord::Migration[5.1]
  def change
    create_table :novelties do |t|
      t.references :scheduleId, foreign_key: true
      t.string :entryState
      t.string :outputState

      t.timestamps
    end
  end
end
