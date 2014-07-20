class Reference < ActiveRecord::Base
  belongs_to :resume
  validates :name, presence: true
end
