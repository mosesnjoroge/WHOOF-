class DogsController < ApplicationController
  before_action :authenticate_user!, except: %i[index]
  before_action :set_dog, only: %i[show update destroy edit]

  def index
    @dogs = Dog.all
  end

  def show
    @dog = set_dog
    @markers = [
      {
        lat: @dog.user.latitude,
        lng: @dog.user.longitude,
        image_url: helpers.asset_url("dog.jpg")
      }
    ]
  end

  def new
    @dog = Dog.new
  end

  def create
    @mydog = Dog.new(dog_params)
    @mydog.user = current_user
    if @mydog.save!
      redirect_to mydogs_path, notice: 'dog was successfully created'
    else
      redirect_to new_dog_path, notice: 'Your dogs details were not correct, try again'
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
    set_dog
    rufus = @dog.name
    @dog.destroy
    redirect_to mydogs_path, status: :see_other, notice: "You removed #{rufus} from Whoof"
  end

  private

  def set_dog
    @dog = Dog.find(params[:id])
  end

  def dog_params
    params.require(:dog).permit(:name, :breed, :skills, :description, :photo, :price)
  end

end
