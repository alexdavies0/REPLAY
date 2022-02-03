class AddDetailsToBookings < ActiveRecord::Migration[6.1]
  def change
    add_reference :bookings, :user_id, index: true
    add_reference :bookings, :game_id, index: true
    add_column :bookings, :status, :boolean
    add_column :bookings, :start_date, :date
    add_column :bookings, :end_date, :date
  end
end
