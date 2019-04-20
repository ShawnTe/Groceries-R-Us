class Item < ApplicationRecord
  has_many :locations, dependent: :destroy
  has_many :stores, through: :locations

  attribute :to_get, :boolean, default: false
end
