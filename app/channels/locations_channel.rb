class LocationsChannel < ApplicationCable::Channel
  def subscribed
    stream_from "location_#{params[:location_id]}"

    # stream_from "some_channel"
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end
end
