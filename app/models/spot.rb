class Spot < ApplicationRecord
  validates :name, presence: true
  validates :tobacco_id, presence: true
  validate :address_or_coordinates_present

  private

  def address_or_coordinates_present
    if address.blank? && (latitude.blank? || longitude.blank?)
      errors.add(:base, "Address or latitude and longitude must be present")
    end
  end

  has_many :users, through: :user_spots
  has_many :user_spots
end
