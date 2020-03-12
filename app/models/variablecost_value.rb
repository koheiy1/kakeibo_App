class VariablecostValue < ApplicationRecord
  validates :value, numericality: { only_integer: true }
end
