class PostsController < ApplicationController

  def show
    @post = Post.find(params[:id])
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(user: current_user, content: params[:post][:content], emotion: params[:post][:emotion])

    if @post.save == true
    	redirect_to '/'
    else
    	render 'new'
    end
  end
end
