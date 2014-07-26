class Objective < ActiveRecord::Base
  include Sluggable
  objective_column

  belongs_to :resume

  validates :description, presence: true
end
