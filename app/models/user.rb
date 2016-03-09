class User < ActiveRecord::Base
  has_many :events, inverse_of: :users

  has_secure_password

  validates :first_name, presence: true, length: {minimum: 2}
  validates :last_name, presence: true, length: {minimum: 2}
  validates :email, uniqueness: true
  validates :password_digest, presence: true, confirmation: true
end
