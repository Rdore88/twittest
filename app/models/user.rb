class User < ApplicationRecord
  has_many :tweets
  validates :password_digest, presence: true, length: { in: 1..170 }
  has_secure_password
end
