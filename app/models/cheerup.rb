class Cheerup < ApplicationRecord
  validates :body, length: {maximum: 170,
  too_long:"%{count} characters exceeds the maximum 170"}
  validates :title, length: {minimum: 5,
  too_short: "%{count} is below the minimum 5 characters"}
  validates :body, :title, presence: true

  has_many :comments
  belongs_to :user
  def upvotes
    self.upvote += 1
  end
end
