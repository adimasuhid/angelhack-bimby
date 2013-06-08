class Baby < ActiveRecord::Base
  attr_accessible :age, :height, :weight, :name, :gender, :user_id
  
  belongs_to :user
  has_many :milestones
end
