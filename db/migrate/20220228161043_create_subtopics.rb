class CreateSubtopics < ActiveRecord::Migration[6.1]
  def change
    create_table :subtopics do |t|
      t.text :description
      t.references :course, null: false, foreign_key: true

      t.timestamps
    end
  end
end
