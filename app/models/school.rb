class School < ActiveRecord::Base
  belongs_to :resume
  validates :degree, presence: true
  validates :year_graduated, presence: true
  validates :name, presence: true
end
