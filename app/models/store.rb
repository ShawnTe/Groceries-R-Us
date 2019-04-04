class Store < ApplicationRecord
  has_many :locations, dependent: :destroy
  has_many :items, through: :locations
  has_many :zones, dependent: :destroy
end
