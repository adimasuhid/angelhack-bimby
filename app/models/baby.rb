class Baby < ActiveRecord::Base
  attr_accessible :age, :height, :weight, :name, :gender, :user_id, :first_name, :last_name
  
  belongs_to :user
  has_many :milestones
  has_many :photos
  after_save :name

  def name
    self.name = "#{self.first_name} #{self.last_name}"
  end
end
