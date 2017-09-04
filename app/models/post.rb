class Post < ApplicationRecord
  validates :content, presence: true
  scope :recent, -> { order("created_at DESC")}
  belongs_to :user
  belongs_to :group
end
