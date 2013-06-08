class AddPhotoIDtoMilestone < ActiveRecord::Migration
  def change
    add_column :milestones, :photo_id, :integer
  end
end
