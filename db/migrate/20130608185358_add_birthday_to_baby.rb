class AddBirthdayToBaby < ActiveRecord::Migration
  def change
    add_column :babies, :birthday, :datetime
    add_column :milestones, :month_achieved, :string
  end
end
