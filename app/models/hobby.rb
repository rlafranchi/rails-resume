class Hobby < ActiveRecord::Base
  belongs_to :resume
  validates :title, presence: true
end
