class ReviewsController < ApplicationController
    #before any one the actions
        #run this :set_restaurant that is linked to the method in the private
  before_action :set_restaurant
    #

    #these method are actions
  def new
    #also sending a restaurant object via set_before action
    @review = Review.new
  end

  def create
    #Set the review with strong params
    #set the the restaurant
    #save said review
    @review = Review.new(review_params)
    @review.restaurant = @restaurant
    @review.save
    redirect_to restaurant_path(@restaurant)

  end

  private
  def review_params
    params.require(:review).permit(:content)
  end
  def set_restaurant
    @restaurant = Restaurant.find(params[:restaurant_id])
  end
end
