class HelloController < ApplicationController
  def index
    @posts = current_user.friends_posts.order(created_at: :desc)
  end
end
