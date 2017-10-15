class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :trackable, :omniauthable, omniauth_providers: [:google_oauth2]

  has_many :posts

  validates :picture_url, format: { with: /.*\.(jpg|png)/i, message: 'must end in an image format' }

  def self.from_omniauth(auth)
    find_or_create_by(email: auth.info.email).tap do |user|
      user.full_name = auth.info.name
      user.picture_url = auth.info.image
      user.save
    end
  end
end
