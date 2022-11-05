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
    @dog = set_dog
    @user = current_user
    @booking.dog = @dog
    @booking.user = @user
    if @booking.save
      redirect_to my_booking_path(@booking)
    else render
      :new
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
    params_require(:booking).permit(:startdate, :enddate)
  end

end
