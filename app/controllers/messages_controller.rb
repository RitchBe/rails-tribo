class MessagesController < ApplicationController
  before_action :authenticate_user!
  before_action :get_messages

  def index
    @id = current_user.id

end

  def create
    message = current_user.messages.build(message_params)
    message.location_id = @location.id
    message.errors
    if message.save
      redirect_back(fallback_location: root_path)
    else
      render 'index'
    end
  end

  def show
      @user = User.find(params[:id])

      @messages = @messages.where(user_id: current_user.id)
      @other = Message.where(location: @location.id)
      @all = []
      @messages.each do |mes|
        @all << mes
      end
      @other.each do |mes|
        @all << mes
      end
      @all.sort_by!(&:created_at)

  end

  private

    def get_messages
      @messages = Message.where(location_id: params[:location_id])
      @message  = current_user.messages.build
      @location = Location.find(params[:location_id])
    end

    def message_params
      params.require(:message).permit(:content, :location_id, :user_id)
    end
end
