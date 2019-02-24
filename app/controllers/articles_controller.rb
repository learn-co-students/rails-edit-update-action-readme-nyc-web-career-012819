class ArticlesController < ApplicationController
  def index
    @articles = Article.all
  end

  def show
    @article = Article.find(params[:id])
  end

  def new
    @article = Article.new
  end

  def create
    @the_article = Article.new
    @the_article.title = params[:title]
    @the_article.description = params[:description]
    @the_article.save
    redirect_to article_path(@the_article)
  end

  def edit
    @update_article = Article.find(params[:id])
  end

  def update
    @update_article = Article.find(params[:id])
    @update_article.update(params.require(:article))
    redirect_to article_path(@update_article)
  end

end
