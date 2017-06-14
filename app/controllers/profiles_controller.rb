class ProfilesController < ApplicationController
  def show
    @profile = User.find(params[:id])
    @my_posts = @profile.posts
    @weather = Weather.lookup_by_location(@profile.location, Weather::Units::FAHRENHEIT)

  end

  def index
    if search_params.present?
      @profiles = UserSearch.new(search_params).filter
    else
      @profiles = User.all
    end
  end

  private

  def search_params
    params.fetch(:user_search, {}).permit(:name)
  end
end
