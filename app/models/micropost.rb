class Micropost < ApplicationRecord
  belongs_to :user
  validates :content, length: {maximum: 140},
                      presence: true
  validate :user_id, presence: true
end
