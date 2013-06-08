class AlterMonthToString < ActiveRecord::Migration
  def change
    change_column :milestone_types, :month, :string
    add_column :milestone_types, :month_num, :integer
  end
end
