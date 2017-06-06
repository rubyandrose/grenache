class ProfilesController < ApplicationController
  def show
    @profile = User.find(params[:id])
  end

  def index 
    @profiles = User.all
  end
end
