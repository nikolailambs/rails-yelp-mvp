class Admin::ReviewsController < ApplicationController

before_action :set_review, only: [:edit, :update, :destroy]
  def edit
  end

  def update
    if @review.update(review_params)
      redirect_to @review
    else
      render 'edit'
    end

  end

  def destroy
    @review.destroy
    redirect_to restaurant_path
  end
end
