class ReviewsController < ApplicationController
  def index
    @reviews = Review.published
  end

  def show
    @review = Review.find(params[:id])
    redirect_to :back if @review.published
  end
end
