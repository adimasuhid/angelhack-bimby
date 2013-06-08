class AddDescriptionToMigrationType < ActiveRecord::Migration
  def change
    add_column :milestone_types, :description, :text
  end
end
