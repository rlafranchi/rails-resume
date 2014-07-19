class Objective < ActiveRecord::Base
  belongs_to :resume

  validates :description, presence: true
end
