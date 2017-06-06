class ProfilesController < ApplicationController
  def show
    @profile = User.find(params[:id])
    @my_posts = @profile.posts
  end
end
