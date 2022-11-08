class DogsController < ApplicationController

  before_action :set_dog, only: [:show, :update, :destroy]

  def index
    @dogs = Dog.all
  end

  # moses was here
  def mydogs
    @dogs = current_user.dogs
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
    # @edit_dog = Dog.find(set_dog)
  end

  def update
    # @edit_dog = Dog.find(set_dog)
    # @edit_dog.update(dog_params)
    redirect_to dogs_path, notice
  end

  def destroy
    @dog.destroy
  end

  private

  def set_dog
    @dog = Dog.find(params[:id])
  end

  def dog_params
    params.require(:dog).permit(:name, :breed, :skills, :description, :image_url, :price)
  end

end
