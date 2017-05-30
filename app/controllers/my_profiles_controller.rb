class MyProfilesController < ApplicationController
  def update
    @profile = current_user
    if @profile.update(create_params)
      redirect_to profile_path(@profile.id)
    else
      render :edit
    end
  end
  def edit
    @profile = current_user
  end

  private
  def create_params
    params.require(:user).permit(:birthday, :location, :hobbies)
  end

end
