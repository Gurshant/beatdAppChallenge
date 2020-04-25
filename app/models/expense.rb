class Expense < ApplicationRecord
  belongs_to :category
  belongs_to :user
  validates(:name, presence: true)
  validates(:cost, presence: true, numericality: true)
  validates(:quantity, presence: true, numericality: { only_integer: true })
end
