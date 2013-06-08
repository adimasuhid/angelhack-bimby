class CreateMilestoneTypes < ActiveRecord::Migration
  def change
    create_table :milestone_types do |t|
      t.string :name
      t.datetime :date

      t.timestamps
    end
  end
end
