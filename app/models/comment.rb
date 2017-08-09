class Comment < ApplicationRecord
  default_scope { order(created_at: :desc) }
  validates :body, length: {maximum: 80,
  too_long:"%{count} characters exceeds the maximum 120"},
  presence: true
  belongs_to :cheerup
  belongs_to :user
end
