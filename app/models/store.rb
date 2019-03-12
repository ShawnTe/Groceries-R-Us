class Store < ApplicationRecord
  has_many :locations
  has_many :items, through: :locations
  has_many :zones
end
