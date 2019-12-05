class Island < ApplicationRecord
  belongs_to :user
  has_many :bookings
  mount_uploader :photo, PhotoUploader

  validates :name, presence: true, allow_blank: false
  validates :description, presence: true, allow_blank: false
  validates :price, presence: true, numericality: { only_integer: true }, allow_blank: false
  validates :photo, presence: true
  validates :location, presence: true, uniqueness: true, allow_blank: false
end
