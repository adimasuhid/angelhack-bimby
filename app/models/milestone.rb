class Milestone < ActiveRecord::Base
  attr_accessible :baby_id, :milestone_type_id, :date

  belongs_to :baby
  belongs_to :milestone_type
  belongs_to :photo
end
