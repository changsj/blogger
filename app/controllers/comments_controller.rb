class CommentsController < ApplicationController
  include CommentsHelper

  before_action :require_login, except: [:create]

  def create
    @article = Article.find(params[:article_id])
    @comment = @article.comments.create(comment_params)
    
    # @comment = Comment.new(comment_params)
    # @comment.article_id = params[:article_id]

    # @comment.save

    redirect_to article_path(@article)
  end
end
