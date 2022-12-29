class BookingsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_dog, only: %i[ create new]
  before_action :set_booking, only: %i[show edit update destroy ]

  def index
    # moses was here
    @bookings = current_user.bookings
    @mydogs = current_user.dogs
    @rentals = []
    @mydogs.each do |dog|
      @rentals.append(dog.bookings)
    end
    @bookings = Booking.all
  end

  def show
    @dog = Dog.find(@booking.dog_id)
  end

  def new
    @booking = Booking.new
    @booking.dog_id = @dog
  end


  def create
    @booking = Booking.new(booking_params)
    @booking.dog = @dog
    @booking.user = current_user
    if @booking.save
      redirect_to mybooking_path(@booking), notice: 'booking was successfully created'
    else
      redirect_to dog_bookings_path
    end
  end


  def edit
  end

  def update
    @booking.update(params[booking_params])
    redirect_to my_booking_path(@booking)
  end

  def destroy
    @booking.destroy
    redirect_to dogs_path, status: :see_other
  end

  private

  def set_dog
    @dog = Dog.find(params[:dog_id])
  end

  def set_booking
    @booking = Booking.find(params[:id])
  end

  def booking_params
    params.require(:booking).permit(:startdate, :enddate)
  end
end
