class LikesController < ApplicationController

  def create
    @target_post = Post.find(params[:post_id])
    @target_post.likes.create!(user: current_user)
    redirect_to '/'
  end

  def destroy
    @target_post = Post.find(params[:post_id])
    @target_post.likes.find_by!(user: current_user).destroy
    redirect_to '/'
  end
end
