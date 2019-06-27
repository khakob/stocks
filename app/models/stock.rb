class Stock < ApplicationRecord
    belongs_to :user
    has_many :portfolios
    validates :ticker, presence: true
    validates :ticker, format: { without: /\s/ }
end
