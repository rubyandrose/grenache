class DrinkCountsController < ApplicationController
  def update
    new_drink_count = (current_user.drink_count|| 0) + 1
    current_user.update!(drink_count: new_drink_count)
    redirect_to root_path
  end
end
