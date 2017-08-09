class Comment < ApplicationRecord
  validates :body, length: {maximum: 120,
  too_long:"%{count} characters exceeds the maximum 120"}
  validates :title, presence: true
  belongs_to :cheerup
end
