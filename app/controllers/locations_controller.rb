class LocationsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]
  before_action :set_location, only: [:show, :edit, :update, :destroy]

  def index
    # @location = Location.all

    @location = Location.geocoded
    if params[:search].present?
      #param_geocoding = params[:in].geo
      @location = @location.near(params[:search], 50, :units => :km)
    end

    @hash = Gmaps4rails.build_markers(@location) do |location, marker|
      marker.lat location.latitude
      marker.lng location.longitude

      marker.infowindow render_to_string(partial: "/shared/card", locals: { location: location })
      authorize @location
    end
  end

  def new
    @user = User.find(current_user.id)

    @location = Location.new
    authorize @location

  end

  def create
    @user = User.find(current_user.id)
    @location = @user.locations.new(location_params)
    @location.features = params[:features]
    authorize @location
    if @location.save
      redirect_to locations_path(@location.id)
    else
      # GO BACK TO THE FORM
      puts "not working"
      render :new
    end
  end

  def show
    #@user = User.find(current_user.id)
    @hash = Gmaps4rails.build_markers(@location) do |location, marker|
      marker.lat location.latitude
      marker.lng location.longitude
    end
    authorize @location
  end

  def edit
    @user = User.find(current_user.id)

    @location = Location.find(params[:id])
    authorize @location

  end

  def update
    @location = Location.find(params[:id])
    @location.update(location_params)
    authorize @location
    redirect_to locations_path(@location.id)

  end

  def destroy
    @location = Location.find(params[:id])
    @location.destroy
    authorize @location

    redirect_to user_path(current_user.id)
  end

  private

  def location_params
    params.require(:location).permit(:name, :email, :search, :address, :phone,
     :description, :capacity, :rate_by_hour, :rate_by_day, :rate_by_week,
      :features, :tags, :rules, photos: [])
  end


  def set_location
    @location = Location.find(params[:id])
  end

end

