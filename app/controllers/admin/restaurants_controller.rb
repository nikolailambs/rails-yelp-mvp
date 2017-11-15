class Admin::RestaurantsController < ApplicationController

  before_action :set_restaurant, only:[:edit, :update, :destroy]

  def edit
  end

  def update
    if @restaurant.update(restaurant_params)
      redirect_to @restaurant
    else
      render 'edit'
    end

  end

  def destroy
    @restaurant.destroy
    redirect_to restaurants_path
  end
end
