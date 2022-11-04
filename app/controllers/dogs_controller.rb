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

  def update
  end

  def destroy
    @dog.destroy
  end

  private

  def set_dog;
    @dog = Dog.find(params[:id])
  end

  def dog_params
    params.require(:dog).permit(:name, :breed, :skills, :description, :image_url, :price, :user_id)
  end
end
