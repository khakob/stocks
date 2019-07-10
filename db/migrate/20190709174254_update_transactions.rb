class UpdateTransactions < ActiveRecord::Migration[5.2]
  def change
    change_table :transactions do |t|
      t.string :order_type
      t.float :price
      t.rename :quantity, :num_shares
   end
  end
end
