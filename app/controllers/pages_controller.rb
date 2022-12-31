class PagesController < ApplicationController
  def home
    @dogs = Dog.all.sample(9)
    @dog_group1 = @dogs.first(3)
    @dog_group2 = @dogs.last(3)
  end
end
