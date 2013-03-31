class User < ActiveRecord::Base
  attr_accessible :birthdate, :email, :firstname, :lastname

#bcrypt ruby gem
  has_secure_password

  before_save { |user| user.email = email.downcase }
  #session token
  before_save :create_remember_token

  validates :lastname,  presence: true, length: { minimum: 2, maximum: 50 }
	validates :lastname,  presence: true, length: { minimum: 2, maximum: 50 }

  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, format: { with: VALID_EMAIL_REGEX }, uniqueness: { case_sensitive: false }

  validates :password, presence: true, length: { minimum: 6 }
  validates :password_confirmation, presence: true


  private

  def create_remember_token
    self.remember_token = SecureRandom.urlsafe_base64
  end


end
