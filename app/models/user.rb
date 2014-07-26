class User < ActiveRecord::Base
  include Sluggable
  sluggable_column :last_name

  include Gravtastic
  gravtastic

  has_one :resume
  has_one :gravatar
  has_secure_password

  validates :username, presence: true, uniqueness: true
  validates :password, presence: true, on: :create, length: {minimum: 3 }
  validates :first_name, presence: true
  validates :last_name, presence: true
end
