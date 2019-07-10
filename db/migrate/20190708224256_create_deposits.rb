class CreateDeposits < ActiveRecord::Migration[5.2]
  def change
    create_table :deposits do |t|
      t.belongs_to :user, index: true
      t.integer "user_id", null: false
      t.float "amount", null: false
      t.timestamps
    end
  end
end
