class ChatChannel < ApplicationCable::Channel
  # Called when the consumer has successfully
  # become a subscriber to this channel.
  def subscribed
    stream_from "chat_main"
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end

  def receive(data)
    data['from'] = current_user.email.split('@')[0]
    ActionCable.server.broadcast("chat_main", data)
  end
end
