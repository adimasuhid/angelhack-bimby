class Photo < ActiveRecord::Base
  attr_accessible :baby_id, :full_url

  belongs_to :baby 
  has_one :milestone
end
