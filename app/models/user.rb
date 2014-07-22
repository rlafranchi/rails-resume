class User < ActiveRecord::Base
  has_one :resume
  has_secure_password

  validates :username, presence: true, uniqueness: true
  validates :password, presence: true, on: :create, length: {minimum: 3 }
end
