class Zone < ApplicationRecord
  belongs_to :store
  has_many :locations, dependent: :destroy
end
