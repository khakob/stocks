class Portfolio < ApplicationRecord
  belongs_to :user
  has_many :transactions
  has_many :stocks though: :transactions
end
