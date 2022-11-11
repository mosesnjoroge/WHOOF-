class PagesController < ApplicationController
  def home
    @dogs = Dog.first(6)
  end
  def checkout
  end
end
