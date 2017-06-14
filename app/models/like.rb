class Like < ApplicationRecord
  belongs_to :user
  belongs_to :post

  validates :user, :post, presence: true
  validates :post, uniqueness: { scope: :user_id }
end
