class CreateAccounts < ActiveRecord::Migration
  def change
    create_table :accounts do |t|
      t.string :name, null: false
      t.integer :age, null: false
      t.text :email, null: false
      t.string :password_digest, null: false
      t.time :reference_time, null: false

      t.timestamps null: false
    end
    add_index :accounts, :email, unique: true
  end
end
