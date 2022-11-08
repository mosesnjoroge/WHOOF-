class DogsController < ApplicationController

  before_action :set_dog, only: [:show, :update, :destroy]

  def index
    @dogs = Dog.all
  end

  def new
    @dog = Dog.new
  end

  def show
  end

  # moses was here
  def edit
    @edit_dog = Dog.find(params[:id])
  end

  def update
    # needs some work moses was here
    @edit_dog = Dog.find(set_dog)
    @edit_dog.update(dog_params)
    redirect_to mydogs_path
    # what moses found
    # if @dog.update(dog_params)
    #   redirect_to dogs_path, notice
    # end
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
