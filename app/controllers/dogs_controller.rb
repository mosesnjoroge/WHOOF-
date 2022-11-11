class DogsController < ApplicationController

  before_action :set_dog, only: [:show, :update, :destroy, :edit]

  def index
    @dogs = Dog.all
  end

  # moses was here
  def show
    @dog = set_dog
  end

  def new
    @dog = Dog.new
  end

  def create
    @mydog = Dog.new(dog_params)
    @mydog.user = current_user
    if @mydog.save
      redirect_to mydog_path, notice: 'dog was successfully created'
    else
      redirect_to mydogs_path, notice: 'dog was not created please try again'
    end
  end

  def mydogs
    @mydogs = Dog.all
  end

  def edit; end

  def update
    if @dog.update(dog_params)
      redirect_to mydog_path, notice: 'dog was successfully updated'
    else
      redirect_to mydogs_path, notice: 'dog was not created please try again'
    end
  end

  def destroy
    @dog.destroy
    redirect_to mydogs_path, status: :see_other
  end

  private

  def set_dog
    @dog = Dog.find(params[:id])
  end

  def dog_params
    params.require(:dog).permit(:name, :breed, :skills, :description, :photo, :price)
  end

end
