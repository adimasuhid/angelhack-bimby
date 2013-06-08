class CreateMilestones < ActiveRecord::Migration
  def change
    create_table :milestones do |t|
      t.integer :baby_id
      t.integer :milestone_type_id

      t.timestamps
    end
  end
end
