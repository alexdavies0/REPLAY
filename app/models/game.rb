class Game < ApplicationRecord
  belongs_to :user
  has_many :bookings
  # has many users through bookings? Will this break?!
  validates :title, presence: true
  validates :description, presence: true, length: { minimum: 10 }
  validates :condition, inclusion: { in: %w(good fair poor), message: "Please state whether the game is in good, fair or poor condition"}
end
