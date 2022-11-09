class DogsController < ApplicationController

  before_action :set_dog, only: [:show, :update, :destroy, :edit]

  def index
    @dogs = Dog.all
  end

  # moses was here
  def mydogs
    # @dogs = current_user.dogs
    @dogs = Dog.all
  end
  
  def new
    @dog = Dog.new
  end

  # moses was here
  def show
     @dog = set_dog
  end

  # moses was here
  def edit

  end

  def update
    if @dog.update(dog_params)
    redirect_to mydog_path
    else
      redirect_to dog_bookings_path
    end
  end

  def destroy
    @dog.destroy
  end

  private

  def set_dog
    @dog = Dog.find(params[:id])
  end

  def dog_params
    params.require(:dog).permit(:name, :breed, :skills, :description, :photo, :price)
  end

end
