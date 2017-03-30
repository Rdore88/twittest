class Tweet < ApplicationRecord
  belongs_to :user
  validates :message, presence: true, length: { in: 1..170 }

end
