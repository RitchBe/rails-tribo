class PrivateMessagesController < ApplicationController
  before_action :authenticate_user!

  before_action do
    @conversation = Conversation.find(params[:conversation_id])
  end

  def index
    @messages = @conversation.private_messages

    @messages.where("user_id != ? AND read = ?", current_user.id, false).update_all(read: true)

    @message = @conversation.private_messages.new
  end

  def create
    @message = @conversation.private_messages.new(message_params)
    @message.user = current_user

    if @message.save
       respond_to do |format|
        format.html { redirect_to conversation_private_messages_path(@conversation) }
        format.js
    end
  else
      respond_to do |format|
        format.html { render 'locations' }
        format.js
  end
end
end

  private
    def message_params
      params.require(:private_message).permit(:body, :user_id)
    end
end
