class School < ActiveRecord::Base
  include Sluggable
  sluggable_column :name

  belongs_to :resume
  validates :degree, presence: true
  validates :year_graduated, presence: true
  validates :name, presence: true
end
