class RemovePerformanceLevelFromUser < ActiveRecord::Migration[6.1]
  def change
    remove_column :users, :performance_level, :integer
  end
end
