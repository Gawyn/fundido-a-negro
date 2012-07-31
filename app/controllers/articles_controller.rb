class ArticlesController < ApplicationController
  inherit_resources

  def index
    @articles = Article.all
  end

  def show
    @article = Article.find(params[:id])
  end
end
