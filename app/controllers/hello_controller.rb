class HelloController < ApplicationController
  def index
    @posts = Post.all
  end
end
