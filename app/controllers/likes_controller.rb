class LikesController < ApplicationController

  def create
    target_post = Post.find(params[:post_id])
    current_user.likes.create!(post: post)
  end

  def destroy
    target_post = Post.find(params[:post_id])
    current_user.likes.delete target_post
  end
end
