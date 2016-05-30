class CreateBrands < ActiveRecord::Migration
  def change
    create_table :brands do |t|
      t.string :name, null: false
      t.integer :price, null: false
      t.float :nicotin, null: false
      t.float :tar, null: false
      t.references :maker, index: true, foreign_key: true, null: false
      t.foreign_key :maker, dependent: :delete

      t.timestamps null: false
    end
    add_index :brands, :name, unique: true
  end
end
