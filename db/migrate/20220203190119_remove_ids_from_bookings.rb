class RemoveIdsFromBookings < ActiveRecord::Migration[6.1]
  def change
    remove_reference :bookings, :user_id, index: true
    remove_reference :bookings, :game_id, index: true
    add_reference :bookings, :user, index: true
    add_reference :bookings, :game, index: true
  end
end
