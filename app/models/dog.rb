class Dog < ApplicationRecord
  belongs_to :user
  has_many :bookings, dependent: :destroy
  has_one_attached :photo
  validates :name, presence: true, length: { in: 3..50 }, uniqueness: true
  validates :breed, length: { in: 3..50 }
  validates :price, numericality: { only_integer: true }
  validates :description, presence: true
  validates :skills, presence: true
end
