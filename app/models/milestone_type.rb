class MilestoneType < ActiveRecord::Base
  attr_accessible :date, :name

  has_many :milestone
end
