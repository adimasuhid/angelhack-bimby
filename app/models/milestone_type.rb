class MilestoneType < ActiveRecord::Base
  attr_accessible :date, :name, :month

  has_many :milestone
end
