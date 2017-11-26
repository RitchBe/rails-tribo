class BookingsController < ApplicationController
  def new
    @location = Location.find(params[:location_id])
    @user = User.find(current_user.id)
  end


 def create
    @location = Location.find(params[:location_id])
    @booking = @location.bookings.new(id: current_user.id, begin: params[:begin], end: params[:end])
    @booking.save
     respond_to do |format|
      if @booking.save
        format.html { redirect_to @test, notice: 'Booking succesfully created.' }
      else
        format.html { render action: "new" }
      end
    end
  end
end
