class UsersController < ApplicationController
  def favorites
    @favorites = Favorite.where("favoritor_id = ?" , current_user.id)
  end
end
