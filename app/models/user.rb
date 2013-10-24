class User < ActiveRecord::Base
  belongs_to :account
  before_save { self.email = email.downcase }
  validates :firstname, presence: true, length:  { maximum: 50, minimum: 1 }
  validates :lastname, presence:true, length: { maximum: 50, minimum: 1 }
  #validates :password_digest, presence:true
  validates :password, length: { minimum: 6 }
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, format: { with: VALID_EMAIL_REGEX }, uniqueness: { case_sensitive: false }
  has_secure_password
end
