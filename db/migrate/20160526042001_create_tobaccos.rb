class CreateTobaccos < ActiveRecord::Migration
  def change
    create_table :tobaccos do |t|
      t.references :account, index: true, foreign_key: true, null: false
      t.references :brand, index: true, foreign_key: true, null: false
      t.foreign_key :account, dependent: :delete
      t.foreign_key :brand, dependent: :delete

      t.timestamps null: false
    end
    add_index :tobaccos, [:account_id, :brand_id], :unique => true
  end
end
