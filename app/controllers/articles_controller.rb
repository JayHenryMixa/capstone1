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
    @article = Article.create({name: params[:name],
      author: params[:author],
      content: params[:content]})

    redirect_to "/articles/#{@article.id}"
  end



end
