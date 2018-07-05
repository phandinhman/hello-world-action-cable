class MessagesController < ActionController::API
  def by_group
    messages = Message.all
    render json: messages
  end
end
