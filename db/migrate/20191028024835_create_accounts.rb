class CreateAccounts < ActiveRecord::Migration[5.2]
  def change
    create_table :accounts do |t|
      t.string :name
      t.references :currency, foreign_key: true
      t.string :account_number
      t.decimal :balance

      t.timestamps
    end
  end
end
