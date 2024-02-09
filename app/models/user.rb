class User < ApplicationRecord
  has_many :gossips
  has_many :comments
  has_many :sent_messages, class_name: "PrivateMessage", foreign_key: "sender_id"
  has_many :received_messages, class_name: "PrivateMessage", foreign_key: "recipient_id"
end
