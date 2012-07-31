class Backoffice::ReviewsController < Backoffice::BackofficeController
  inherit_resources
  load_and_authorize_resource

  def create
    @review = Review.new(params[:review])
    @review.created_by = current_user
    if @review.save
      flash[:notice] = "Review created."
      redirect_to backoffice_documents_path
    else
      flash[:error] = "It was not possible to save the review."
      redirect_to :back
    end
  end

  def update
    if @review.update_attributes(params[:review])
      flash[:notice] = "Review updated."
      redirect_to backoffice_documents_path
    else
      flash[:error] = "It was not possible to save the review."
      redirect_to :back
    end
  end

  def index
    @reviews = current_user.editor? ? current_user.reviews : Review.all
  end
end
