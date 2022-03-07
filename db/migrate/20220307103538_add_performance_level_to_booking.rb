class AddPerformanceLevelToBooking < ActiveRecord::Migration[6.1]
  def change
    add_column :bookings, :performance_level, :integer
  end
end
