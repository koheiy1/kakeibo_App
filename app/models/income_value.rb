class IncomeValue < ApplicationRecord
  validates :value, numericality: { only_integer: true }
  belongs_to :user
end
