class ReviewsController < ApplicationController
  inherit_resources
  load_resource

  def index
    @reviews = Review.all
  end

  def show
    @review = Review.find(params[:id])
  end
end
