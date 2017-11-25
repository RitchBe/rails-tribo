class Message < ApplicationRecord
  belongs_to :user
  belongs_to :location
  validates :content, presence: true
  scope :for_display, -> { order(:created_at).last(50) }
  after_create :broadcast_message


  def broadcast_message
    ActionCable.server.broadcast("location_#{location.id}", {
      message_partial: ApplicationController.renderer.render(
        partial: "messages/message",
        locals: { message: self, user_is_messages_author: false }
      ),
      current_user_id: user.id
    })
  end
end
