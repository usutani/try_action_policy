class CommentsController < ApplicationController
  def create
    @post = Post.find(params[:post_id])
    @comment = Comment.create! content: params[:comment][:content],
                               post: @post, user: @current_user
  end
end
