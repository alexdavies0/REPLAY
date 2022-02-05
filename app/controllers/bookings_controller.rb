class BookingsController < ApplicationController
  before_action :set_game, except: [:index, :show]

  def index
    @bookings = Booking.all
  end

  def show
    @booking = Booking.find(params[:id])
  end

  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.game = @game
    @booking.save
    # redirect_to game_path(@game)
  end

  private

  def set_game
    @game = Game.find(params[:game_id])
  end

  # def booking_params
  #   params.require(:booking).permit(:content)
  # end

  def booking_params
    params.require(:booking).permit(:start_date, :end_date)
  end
end
