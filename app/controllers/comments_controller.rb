class CommentsController < ApplicationController
  before_action :require_login, except: [:create]

  include CommentsHelper
  def create
    @comment = Comment.new(comment_params)
    @comment.article_id = params[:article_id]
    @comment.save
    flash.notice = "Comment by '#{@comment.author_name}' Created!"
    redirect_to article_path(@comment.article)
  end


end
