class CreateTransactions < ActiveRecord::Migration[5.2]
  def change
    create_table :transactions do |t|
      t.references :category, foreign_key: true
      t.date :date
      t.string :detail
      t.decimal :amount
      t.integer :currency

      t.timestamps
    end
  end
end
