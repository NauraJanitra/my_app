class HomeController < ApplicationController
  def index
    @articles = Article.all
  end

  def read 
    @article = Article.where(id: params[:article_id]).first
  end

  def save_comment
    @article = Article.where(id: params[:article_id]).first
    comment = @article.comments.new
    comment.comment = params[:comment]
    if comment.save
      redirect_to read_path(article_id: @article.id, notice: 'succses')
    else
      redirect_to read_path(article_id: @article.id, notice: 'error')
    end
  end
  
  def About
  end

  def search
    @articles = Article.where(title: params[:keyword])
  end
end
