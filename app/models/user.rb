class User < ActiveRecord::Base
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :name, length: {maximum:50},presence: true
  validates :email, length: {maximum:255},presence:true,
                    format: {with: VALID_EMAIL_REGEX},
                    uniqueness:  {case_sensitive: false}
  has_secure_password
  validates :password, presence: true, length: {minimum:6}, allow_nil: true

  belongs_to :team
end
