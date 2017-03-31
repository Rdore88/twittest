class User < ApplicationRecord
  has_many :tweets
  validates :password_digest, presence: true, length: { in: 1..170 }
  validates :password, confirmation: true
  validates :password_confirmation, presence: true
  validates :username, presence: true
  has_secure_password
end
