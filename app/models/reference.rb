class Reference < ActiveRecord::Base
  include Sluggable
  sluggable_column :name

  belongs_to :resume
  validates :name, presence: true
end
