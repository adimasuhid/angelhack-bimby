class Milestone < ActiveRecord::Base
  attr_accessible :baby_id, :milestone_type_id, :date, :photo_id, :month_achieved, :name

  belongs_to :baby
  belongs_to :milestone_type
  belongs_to :photo

  before_save :get_month_achieved, :get_name

  def get_month_achieved
    bday = self.baby.birthday
    milestone = self.date

    difference = (milestone.year * 12 + milestone.month) - (bday.year * 12 + bday.month)

    self.month_achieved = "month_#{difference}"
  end

  def get_name
    self.name = self.milestone_type.name
  end
end
