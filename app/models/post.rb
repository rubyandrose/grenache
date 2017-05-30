class Post < ApplicationRecord
  belongs_to :user
  validates :emotion, inclusion: { in: ['Happy', 'Sad', 'Intoxicated'], allows_blank: true }
end
