class Resume < ActiveRecord::Base
  has_many :schools
  has_many :hobbies
  has_many :experiences
  has_many :skills
  has_many :references
  has_many :customs
  has_one :objective
  belongs_to :user
end