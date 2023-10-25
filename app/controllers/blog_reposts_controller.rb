class BlogRepostsController < ApplicationController
  before_action :set_blog

  def create
    @blog.increment! :blog_reposts_count
    redirect_to blogs_path
  end

  private

  def set_blog
    @blog = Blog.find(params[:blog_id])
  end
end
