class CreateOptions < ActiveRecord::Migration[5.2]
  def change
    create_table :options do |t|
      t.text :option
      t.integer :parent_question_id
      t.integer :child_question_id

      t.timestamps
    end
  end
end
