class HelloController < ApplicationController
  def index
    @posts = current_user.friends_posts.order(created_at: :desc)
    @user_search = UserSearch.new
  end
end
