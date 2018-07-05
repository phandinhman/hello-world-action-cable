class Message < ApplicationRecord
  belongs_to :chatroom
  belongs_to :user

  after_create_commit {MessageBroadcastJob.perform_now self}
  paginates_per 10
end
