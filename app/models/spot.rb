class Spot < ApplicationRecord
  validates :name, presence: true
  validates :tobacco_id, presence: true
  validates :fence, presence: true
  validates :roof, presence: true
  validates :chair, presence: true
  validates :latitude, presence: true
  validates :longitude, presence: true

  has_many :users, through: :user_spots
end
