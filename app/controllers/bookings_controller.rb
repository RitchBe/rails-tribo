class BookingsController < ApplicationController

  skip_before_action :authenticate_user!

  def new
    @location = Location.find(params[:location_id])
    @user = User.find(current_user.id)
  end

 # def create
 #    @location = Location.find(params[:location_id])
 #    @booking = @location.bookings.new(user_id: current_user.id, begin: params[:begin], end: params[:end], price: params[:price], status: 'pending')

 #    if @booking.save
 #      redirect_to new_booking_payment_path(@booking)
 #      #redirect_to booking_success_path(@booking), notice: 'Booking succesfully created.'
 #    else
 #      redirect_to :back
 #    end
 #  end

  def create
    location = Location.find(params[:location_id])
    booking = location.bookings.create!(user_id: current_user.id, begin: params[:begin], end: params[:end], price: params[:price], status: 'pending')

    redirect_to new_booking_payment_path(booking)
  end

  def index
    @bookings = User.find(current_user.id).bookings
    @user = User.find(current_user.id)
  end

  def success

  end
end
