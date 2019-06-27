class AddPortfolio < ActiveRecord::Migration[5.2]
  create_table :portfolios do |t|
    t.belongs_to :user, index: true
  end
end
