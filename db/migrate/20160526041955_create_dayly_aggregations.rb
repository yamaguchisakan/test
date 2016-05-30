class CreateDaylyAggregations < ActiveRecord::Migration
  def change
    create_table :dayly_aggregations do |t|
      t.date :aggregation_day, null: false
      t.time :avg_interval, null: false
      t.float :avg_number, null: false
      t.float :avg_price, null: false
      t.references :account, index: true, foreign_key: true, null: false
      t.foreign_key :account, dependent: :delete

      t.timestamps null: false
    end
  end
end
