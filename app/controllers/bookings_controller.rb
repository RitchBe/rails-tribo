class BookingsController < ApplicationController
  def new
    @location = Location.find(params[:location_id])
    @user = User.find(current_user.id)
  end

 def create
    @location = Location.find(params[:location_id])
    @booking = @location.bookings.new(user_id: current_user.id, begin: params[:begin], end: params[:end])
    if @booking.save
      redirect_to booking_success_path(@booking), notice: 'Booking succesfully created.'
    else
      render action: "new"
    end
  end

  def success

  end
end
