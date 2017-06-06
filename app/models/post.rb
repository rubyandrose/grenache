class Post < ApplicationRecord
  EMOTIONS=['Happy', 'Sad', 'Intoxicated', 'Frump-tastic']

  belongs_to :user
  validates :emotion, inclusion: { in: EMOTIONS }, allow_nil: true

  validates :content , length: { minimum: 1,
  too_short: "oops, looks like you still need to type a post" }

  validates :content , length: { maximum: 200,
  too_long: "oops, too much content" }

end
