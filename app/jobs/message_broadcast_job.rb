class MessageBroadcastJob < ApplicationJob
  queue_as :default

  def perform message
    ActionCable.server.broadcast "messages", message: message
  end

  private
  def render_message message
    ApplicationController.rendefer.render(partial: "messages/message", locals: {message: message})
  end
end
