class CreateCourses < ActiveRecord::Migration[6.1]
  def change
    create_table :courses do |t|
      t.integer :school_year
      t.string :subject
      t.string :topic
      t.integer :performance_level
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
