class ArticlesController < ApplicationController
  def index

  end

  def new
    @category = Category.find_by(id: params[:category_id])
  end

  def create
    @article = Article.new(title: params[:article][:title], description: params[:article][:description], category_id: params[:category_id])
    [422, "Somethings went terribly awry"] unless @article.save

    redirect_to category_article_path(id: @article.id)
  end

  def show
    @article = Article.find_by(id: params[:id])
  end

  def edit
    @article = Article.find_by(id: params[:id])
  end

  def update
    @article = Article.find_by(id: params[:id])
    @article.assign_attributes(title: params[:article][:title], description: params[:article][:description])
    [422, "Somethings went terribly awry"] unless @article.save

    redirect_to category_article_path(id: @article.id)
  end

  def destroy
    @article = Article.find_by(id: params[:id])
    @article.delete

    redirect_to category_path(id: params[:category_id])
  end
end
