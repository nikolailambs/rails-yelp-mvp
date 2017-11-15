class ReviewsController < ApplicationController
  before_action :set_review, only: [:show, :create, :edit, :destroy ]

  def index
    @reviews = Review.all
  end

  def show
  end

  def new
    @review = Review.new
  end

  def create
    if @review.save
      redirect_to @review
    else
      render 'new'
    end
  end

  # def edit
  # end

  # def update
  #   if @review.update(review_params)
  #     redirect_to @review
  #   else
  #     render 'edit'
  #   end

  # end

  # def destroy
  #   @review.destroy
  # end

end
