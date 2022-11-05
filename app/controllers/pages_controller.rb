class PagesController < ApplicationController
  def home
    @dogs = Dog.first(5)
  end
  def checkout
  end
end
