class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

   def set_restaurant
    @restaurant = Restaurant.find(params["id"])
  end

  def restaurant_params
    params.require(:restaurant).permit(:name, :address, :category, :phone_number)
  end

  def set_review
    @review = Review.find(params["id"])
  end

  def review_params
    params.require(:review).permit(:content, :rating)
  end
end
