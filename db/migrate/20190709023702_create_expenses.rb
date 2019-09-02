class CreateExpenses < ActiveRecord::Migration[5.2]
  def change
    create_table :expenses do |t|
      t.references :category, foreign_key: true
      t.string :name
      t.string :description
      t.decimal :amount
      t.date :expense_date
      t.string :payment_method

      t.timestamps
    end
  end
end
