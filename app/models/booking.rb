class Booking < ApplicationRecord
  belongs_to :dog
  belongs_to :rental, polymorphic: true
end
