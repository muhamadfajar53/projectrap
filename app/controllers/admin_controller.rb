class AdminController < ApplicationController
  def index
  end

  def posts
    @post = Post.all.includes(:user, :comments)
  end

  def comments
  end

  def uusers
  end

  def show_post
    @post = Post.includes(:user, :comments).find(params[:id])
  end
end
