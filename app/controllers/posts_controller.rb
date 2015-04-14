require 'about'

class PostsController < ApplicationController
  def index
  	if params[:search]
  	  @posts = Post.search(params[:search]).order("updated_at DESC").page(params[:page]).per(6)
    else
      @posts = Post.order("created_at DESC").page(params[:page]).per(6)
    end
    about
  end

  def show
  	@post = Post.find(params[:id])
    about
  end
end

