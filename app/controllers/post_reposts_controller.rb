class PostRepostsController < ApplicationController
  before_action :set_post

  def create
    @post.increment! :post_reposts
    redirect_to posts_path
  end

  private

  def set_post
    @post = Post.find(params[:post_id])
  end

end
