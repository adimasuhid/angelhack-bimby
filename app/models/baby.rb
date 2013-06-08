class Baby < ActiveRecord::Base
  attr_accessible :age, :height, :weight, :name, :gender, :user_id, :first_name, :last_name, :photos_attributes
  
  belongs_to :user
  has_many :milestones
  has_many :photos
  after_save :name

  accepts_nested_attributes_for :photos

  def full_name
    "#{self.first_name} #{self.last_name}"
  end
end
