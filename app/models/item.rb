class Item < ApplicationRecord
  has_many :locations
  has_many :stores, through: :locations

  attribute :to_get, :boolean, default: false
end
