class Post < ApplicationRecord
  EMOTIONS=['Happy', 'Sad', 'Intoxicated', 'Frump-tastic']

  belongs_to :user
  validates :emotion, inclusion: { in: EMOTIONS, allows_blank: true }
end
