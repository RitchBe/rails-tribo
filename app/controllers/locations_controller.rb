class LocationsController < ApplicationController

  before_action :set_location, only [:show, :edit, :update, :destroy]

  def index
    @location = Location.all
  end

  def new
    @user = User.find(params[:user_id])

    @location = Location.new
  end

  def create
    @user = User.find(params[:user_id])
    @location = @user.locations.new(product_params)
    if @location.save
      redirect_to user_path(@user.id)
    else
      # GO BACK TO THE FORM
      puts "not working"
      render :new
    end
  end

  def show
    @user = User.find(params[:user_id])
  end

  def edit
    @user = User.find(params[:user_id])

    @location = Location.find(params[:id])
  end

  def update
    @location = Location.find(params[:id])
    @location.update(location_params)

    redirect_to :back
  end

  def destroy
    @location = Location.find(params[:id])
    @location.destroy
    redirect_to user_path(current_user.id)
  end

  private

  def location_params
    params.require(:location).permit(:name, :email, :address, :phone, :description, :capacity, :rate_by_hour, :rate_by_day, :rate_by_week, :features, :tags, :rules)
  end

  def set_location
    @location = Location.find(params[:id])
  end

end

