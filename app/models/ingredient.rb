# frozen_string_literal: true

# Description/Explanation of Ingredient class
class Ingredient < ApplicationRecord
  has_many :doses
  validates :name, presence: true, uniqueness: true
end
