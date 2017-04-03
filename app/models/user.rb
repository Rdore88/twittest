class User < ApplicationRecord
  has_many :tweets
  has_many :follower_subscriptions, class_name: "Subscription", foreign_key: :follower_id
  has_many :followee_subscriptions, class_name: "Subscription", foreign_key: :followee_id
  validates :password_digest, presence: true
  validates :password, confirmation: true
  validates :password_confirmation, presence: true
  validates :username, presence: true
  has_secure_password
end
