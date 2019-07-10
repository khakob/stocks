class RemoveColumnFromStock < ActiveRecord::Migration[5.2]
  def change
    remove_column :stocks, :user_id, :integer
    remove_column :stocks, :user_id, :index
  end
end
