class Admin::RestaurantsController < ApplicationController
  ## this name space area, ADMIN
    #is just so we can separete similar, yet different, logic for managing our object


  def index

    #
    @restaurants = Restaurant.all
    #in real life, we ill use current_user to get OUR admin restaurants
  end
end
