class CreateAccounts < ActiveRecord::Migration[5.2]
  def change
    create_table :accounts do |t|
      t.string :name
      t.integer :currency
      t.string :account_number
      t.decimal :balance

      t.timestamps
    end
  end
end
