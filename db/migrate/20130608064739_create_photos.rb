class CreatePhotos < ActiveRecord::Migration
  def change
    create_table :photos do |t|
      t.integer :baby_id
      t.string :full_url

      t.timestamps
    end
  end
end
