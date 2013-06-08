class AddMonthToMilestoneType < ActiveRecord::Migration
  def change
    add_column :milestone_types, :month, :integer
  end
end
