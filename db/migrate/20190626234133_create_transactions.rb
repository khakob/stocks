class CreateTransactions < ActiveRecord::Migration[5.2]
  def change
    create_table :transactions do |t|
      t.belongs_to :portfolio
      t.belongs_to :stock
      t.datetime :transactions_date
      t.timestamps
    end
  end
end
