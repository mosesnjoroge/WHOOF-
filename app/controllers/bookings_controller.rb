class BookingsController < ApplicationController
  def index
    @bookings = Booking.all
  end

  def show
    @booking = set_booking
  end

  def new
    @booking = Booking.new
    @dog = Dog.find(params[:dog_id])
  end

  def create
    @booking = Booking.new(booking_params)
    @dog = set_dog
    @user = current_user
    @booking.dog = @dog
    @booking.user = current_user
    if @booking.save!
      redirect_to root_path
    else
      raise
      redirect_to dog_bookings_path
    end
  end

  def edit
    @booking = Booking.find(set_booking)
  end

  def update
    @booking = Booking.find(set_booking)
    @booking.update(params[booking_params])
    redirect_to my_booking_path(@booking)
  end

  private

  def set_dog
    Dog.find(params[:dog_id])
  end

  def set_booking
    Booking.find(params[:id])
  end


  def booking_params
    params.require(:booking).permit(:startdate, :enddate)
  end

end
