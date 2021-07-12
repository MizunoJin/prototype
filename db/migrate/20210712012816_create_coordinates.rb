class CreateCoordinates < ActiveRecord::Migration[5.2]
  def change
    create_table :coordinates do |t|
      t.float :x
      t.float :y
      t.string :url

      t.timestamps
    end
  end
end
