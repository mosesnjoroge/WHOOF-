class BookingsController < ApplicationController
  def index
    @bookings = Booking.all
  end

  def show
    @booking = set_booking
  end

  def new
    @booking = Booking.new()
  end

  def create
    @booking = Booking.new(booking_params)
  def edit

  end

  def update

  end

  private

  def set_dog

  end

  def set_booking
    Booking.find(params[:id])
  end

  def booking_params
    params_require(:booking).permit(:startdate, :enddate)
  end

end
