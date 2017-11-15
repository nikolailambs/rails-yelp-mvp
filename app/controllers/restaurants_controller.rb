class RestaurantsController < ApplicationController

  before_action :set_restaurant, only: [:show, :edit, :destroy ]

  def index
    @restaurants = Restaurant.all
  end

  def show
  end

  def new
    @restaurant = Restaurant.new
  end

  def create
    @restaurant = Restaurant.new(restaurant_params)
    if @restaurant.save
      redirect_to @restaurant
    else
      render 'new'
    end
  end

  # def edit
  # end

  # def update
  #   if @restaurant.update(restaurant_params)
  #     redirect_to @restaurant
  #   else
  #     render 'edit'
  #   end

  # end

  # def destroy
  #   @restaurant.destroy
  # end
end
