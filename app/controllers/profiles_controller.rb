class ProfilesController < ApplicationController
  def show
    @profile = User.find(params[:id])
    @my_posts = @profile.posts
    @weather = Weather.lookup_by_location(@profile.location, Weather::Units::FAHRENHEIT)

  end

  def index 
    @profiles = User.all
  end
end
