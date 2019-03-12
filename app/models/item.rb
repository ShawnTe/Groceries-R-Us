class Item < ApplicationRecord
  has_many :locations
  has_many :stores, through: :locations
end
