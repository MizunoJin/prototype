class CreateCoordinates < ActiveRecord::Migration[5.2]
  def change
    create_table :coordinates do |t|
      t.integer :x
      t.integer :y
      t.integer :width
      t.string :url

      t.timestamps
    end
  end
end
