class LikesController < ApplicationController

  def create
    @target_post = Post.find(params[:post_id])
    @target_post.likes.create!(user: current_user)

    respond_to do |format|
      format.js { render :re_render_likes }
    end
  end

  def destroy
    @target_post = Post.find(params[:post_id])
    @target_post.likes.find_by!(user: current_user).destroy
    respond_to do |format|
      format.js { render :re_render_likes }
    end
  end
end
