class PagesController < ApplicationController
  def home
    @dogs = Dog.all.sample(9)
  end
end
