class Dog < ApplicationRecord
  belongs_to :user
  has_many :bookings
  has_one_attached :photo
  validates :name, presence: true, length: { in: 3..50 }, uniqueness: true
  validates :breed, length: { in: 3..20 }
  validates :price, numericality: { only_integer: true }
  validates :description, presence: true, length: { in: 15..280 }
end
