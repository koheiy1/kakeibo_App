class Income < ApplicationRecord
  has_many :income_values, dependent: :destroy
  belongs_to :user
end
