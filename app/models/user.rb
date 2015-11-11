class User < ActiveRecord::Base

  has_many :lessons, dependent: :destroy
  has_many :active_user_followings, class_name:  "UserFollowing",
                                  foreign_key: "follower_id",
                                  dependent:   :destroy
  has_many :passive_user_followings, class_name:  "UserFollowing",
                                   foreign_key: "followed_id",
                                   dependent:   :destroy     
  has_many :following, through: :active_user_followings, source: :followed
  has_many :followers, through: :passive_user_followings, source: :follower

  validates :name,  presence: true, length: { maximum: 50 }
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, length: { maximum: 50 },
  			 format: { with: VALID_EMAIL_REGEX }, uniqueness: { case_sensitive: false }
  has_secure_password
  validates :password, presence: true, length: { minimum: 6 }, allow_nil: true

end
