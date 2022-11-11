class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :dogs
  has_many :bookings, through: :dogs
  has_many :rentals, class_name: 'Booking'

  geocoded_by :address
  after_validation :geocode, if:
  :will_save_change_to_address?
end
