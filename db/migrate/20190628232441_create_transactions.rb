class CreateTransactions < ActiveRecord::Migration[5.2]
  
  def change
    create_table :transactions do |t|
      t.belongs_to :user, index: true
      t.belongs_to :stock, index: true
      t.integer :quantity
      t.timestamps
    end
  end
end
