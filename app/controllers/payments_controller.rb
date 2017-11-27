class PaymentsController < ApplicationController
  before_action :set_booking

  def new
  end

  def show
    @booking = Booking.where(state: 'paid').find(params[:id])
  end

  def create
      customer = Stripe::Customer.create(
        source: params[:stripeToken],
        email:  params[:stripeEmail]
      )

      charge = Stripe::Charge.create(
        customer:     customer.id,   # You should store this customer id and re-use it.
        amount:       @booking.price_cents,
        description:  "Payment for booking id #{@booking.id}",
        currency:     @booking.price.currency
      )

      @booking.update(payment: charge.to_json, status: 'paid')
      redirect_to booking_path(@booking)

    rescue Stripe::CardError => e
      flash[:alert] = e.message
      redirect_to new_booking_payment_path(@booking)
  end

  private

    def set_booking
      @booking = Booking.where(status: 'pending').find(params[:booking_id])
    end
end
