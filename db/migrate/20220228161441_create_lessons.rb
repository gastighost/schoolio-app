class CreateLessons < ActiveRecord::Migration[6.1]
  def change
    create_table :lessons do |t|
      t.date :date
      t.time :time
      t.integer :duration
      t.integer :max_capacity
      t.references :subtopic, null: false, foreign_key: true

      t.timestamps
    end
  end
end
