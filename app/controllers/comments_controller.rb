class CommentsController < ApplicationController
  include CommentsHelper

  def create
    @article = Article.find(params[:article_id])
    @comment = @article.comments.create(comment_params)
    
    # @comment = Comment.new(comment_params)
    # @comment.article_id = params[:article_id]

    # @comment.save

    redirect_to article_path(@article)
  end
end
