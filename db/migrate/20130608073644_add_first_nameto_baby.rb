class AddFirstNametoBaby < ActiveRecord::Migration
  def change
    add_column :babies, :first_name, :string
    add_column :babies, :last_name, :string
  end
end
