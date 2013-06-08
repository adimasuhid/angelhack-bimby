class AddColumnsToBaby < ActiveRecord::Migration
  def change
    add_column :babies, :name, :string
    add_column :babies, :gender, :string
    add_column :babies, :user_id, :integer
  end
end
