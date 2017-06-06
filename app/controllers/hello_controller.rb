class HelloController < ApplicationController
  def index
    @posts = current_user.friends_posts
  end
end
