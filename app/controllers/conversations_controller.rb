class ConversationsController < ApplicationController
  before_action :authenticate_user!
  def index
    @conversations = Conversation.where("sender_id = ? OR receiver_id = ?", current_user.id, current_user.id)
    @conversations = @conversations.order('updated_at DESC')
    @users = User.where.not(id: current_user.id)
    @private_messages = PrivateMessage.where("sender_id = ? OR receiver_id = ?", current_user.id, current_user.id)
  end


  def create
    if Conversation.between(params[:sender_id], params[:receiver_id]).present?
      @conversation = Conversation.between(params[:sender_id], params[:receiver_id]).first
    else
      @conversation = Conversation.create!(conversation_params)
    end

    redirect_to conversation_private_messages_path(@conversation)
  end

  def delete
    Conversation.find(params[:id]).delete
  end

  private
    def conversation_params
      params.permit(:sender_id, :receiver_id, :id)
    end
end
