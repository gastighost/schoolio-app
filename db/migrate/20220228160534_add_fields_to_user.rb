class AddFieldsToUser < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :name, :string
    add_column :users, :description, :text
    add_column :users, :age, :integer
    add_column :users, :school_year, :integer
    add_column :users, :years_of_study, :integer
    add_column :users, :learning_type, :string
    add_column :users, :interest, :string
    add_column :users, :user_type, :string
  end
end
