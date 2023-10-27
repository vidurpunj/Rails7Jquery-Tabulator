class PostLikesController < ApplicationController
  before_action :set_post

  def create
    @post.increment! :post_like
    redirect_to posts_path
  end

  private

  def set_post
    @post = Post.find(params[:post_id])
  end
end
