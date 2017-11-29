class UsersController < ApplicationController
  def favorites
    @favorites = Favorite.where("favoritor_id = ?" , current_user.id)
  end

  def show
    @user = User.find(current_user.id)
  end
end
