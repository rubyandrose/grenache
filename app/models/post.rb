class Post < ApplicationRecord
  EMOTIONS=['Happy', 'Sad', 'Intoxicated', 'Frump-tastic']

  belongs_to :user
  validates :emotion, inclusion: { in: EMOTIONS }, allow_nil: true
end
