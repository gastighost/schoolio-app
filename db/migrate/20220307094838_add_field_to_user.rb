class AddFieldToUser < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :performance_level, :integer
  end
end
