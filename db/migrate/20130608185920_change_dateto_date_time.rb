class ChangeDatetoDateTime < ActiveRecord::Migration
  def change
    change_column :milestones, :date, :datetime
  end
end
