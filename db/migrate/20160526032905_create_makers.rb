class CreateMakers < ActiveRecord::Migration
  def change
    create_table :makers do |t|
      t.string :name, null: false

      t.timestamps null: false
    end
    add_index :makers, :name, unique: true
  end
end
