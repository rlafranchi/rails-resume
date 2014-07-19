class Project < ActiveRecord::Base
  belongs_to :experiences
  validates :name, presence: true
  validates :description, presence: true
end
