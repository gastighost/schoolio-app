class RemoveFieldFromBookings < ActiveRecord::Migration[6.1]
  def change
    remove_reference :bookings, :review, foreign_key: true
  end
end
