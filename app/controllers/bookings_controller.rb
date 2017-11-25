class BookingsController < ApplicationController
   def create
    @user = User.find(current_user.id)
    @location = @user.locations.new(location_params)
    @location.features = params[:features]
    authorize @location
    # if @location.save
    #   redirect_to locations_path(@location.id)
    # else
    #   # GO BACK TO THE FORM
    #   puts "not working"
    #   render :new
    # end
    respond_to do |format|
    if @location.save
      format.html { redirect_to @test, notice: 'Booking succesfully created.' }
    else
      format.html { render action: "new" }
    end
  end
  end
  def new
    @location = Location.find(params[:location_id])
    @user = User.find(current_user.id)
  end
end

