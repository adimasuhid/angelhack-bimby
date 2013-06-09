class MilestoneType < ActiveRecord::Base
  attr_accessible :date, :name, :month, :month_num, :description

  has_many :milestone
  before_save :month_name, :lorem

  def month_name
    self.month = "month_#{self.month_num}"
  end

  def lorem
    self.description = "Congratulations!" if self.description.blank?
  end
end
