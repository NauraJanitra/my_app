class HomeController < ApplicationController
  def index
    @articles = Article.all
  end

  def read @article.where(id:params [:article.id])
end
