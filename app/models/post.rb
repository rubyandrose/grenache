class Post < ApplicationRecord
  EMOTIONS=['Happy', 'Sad', 'Intoxicated', 'Frump-tastic']

  belongs_to :user
  validates :emotion, inclusion: { in: EMOTIONS }, allow_nil: true

  validates :content , length: { minimum: 1,
  too_short: "oops, looks like you still need to type a post" }

  validates :content , length: { maximum: 200,
  too_long: "oops, too much content" }

  BANNED_WORDS=['jabroni', 'charlatan', 'wealthfront', 'zinfandel']

  def censored_content
    sentence = content
    BANNED_WORDS.each do | word |
      sentence.gsub!(word, '*'*word.length)
    end
    sentence
  end
end
