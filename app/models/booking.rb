class Booking < ApplicationRecord
  belongs_to :dog
  belongs_to :user

  validates :startdate, :enddate, :user_id, :dog_id, presence: true
  validates :startdate, comparison: { less_than: :enddate }
  validate :not_the_same_date

  private

  def not_the_same_date
    if enddate == startdate
      errors.add(:enddate, "must be after the start date")
    end
  end
end
