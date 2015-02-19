class CreateRectangles < ActiveRecord::Migration
  def change
    create_table :rectangles do |t|
      t.string :name
      t.float :latitude0
      t.float :longitude0
      t.float :latitude1
      t.float :longitude1

      t.timestamps null: false
    end
  end
end
