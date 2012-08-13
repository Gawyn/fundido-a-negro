class ArticlesController < ApplicationController
  def index
    @articles = Article.published
  end

  def show
    @article = Article.find(params[:id])
    redirect_to :back if @article.published
  end
end
