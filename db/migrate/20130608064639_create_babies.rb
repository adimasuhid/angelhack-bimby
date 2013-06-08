class CreateBabies < ActiveRecord::Migration
  def change
    create_table :babies do |t|
      t.string :age
      t.string :weight
      t.string :height

      t.timestamps
    end
  end
end
