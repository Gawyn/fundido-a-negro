class Backoffice::ArticlesController < Backoffice::BackofficeController
  inherit_resources
  load_and_authorize_resource

  def create
    @article = Article.new(params[:article])
    @article.author = current_user
    if @article.save
      flash[:notice] = "Article created."
      redirect_to backoffice_articles_path
    else
      flash[:error] = "It was not possible to save the article."
      redirect_to :back
    end
  end

  def update
    if @article.update_attributes(params[:article])
      flash[:notice] = "Article updated."
      redirect_to backoffice_articles_path
    else
      flash[:error] = "It was not possible to update the article."
      redirect_to :back
    end
  end
end
