class Stock < ApplicationRecord
    validates :ticker, presence: true
    validates :ticker, format: { without: /\s/ }
    
    has_many :transactions
    has_many :users, through: :transactions
end
