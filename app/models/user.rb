class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :dogs, through: :bookings
  has_many :bookings, through: :dogs
  has_many :rentals, class_name: 'Booking'
end
