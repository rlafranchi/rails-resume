class Experience < ActiveRecord::Base
  belongs_to :resume
  has_many :projects
  validates :job_title, presence: true
end
