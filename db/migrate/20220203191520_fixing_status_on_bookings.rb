class FixingStatusOnBookings < ActiveRecord::Migration[6.1]
  def change
    remove_column :bookings, :status, :boolean
    add_column :bookings, :status, :string
  end
end
