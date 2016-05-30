class CreateSmokings < ActiveRecord::Migration
  def change
    create_table :smokings do |t|
      t.date :smoke_date, null: false
      t.time :smoke_time, null: false
      t.time :smoke_interval, null: false
      t.float :latitude, null: false
      t.float :longitude, null: false
      t.references :tobacco, index: true, foreign_key: true, null: false
      t.foreign_key :tobacco, dependent: :delete

      t.timestamps null: false
    end
  end
end
