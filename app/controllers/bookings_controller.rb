class BookingsController < ApplicationController

  def index
    @bookings = Booking.all
  end

  def show
    @booking = Booking.find(params[:id])
  end

  def new
    @game = Game.find(params[:game_id])
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    @game = Game.find(params[:game_id])
    @booking.game = @game
    @booking.save
    # redirect_to game_path(@game)
  end

  private

  def booking_params
    params.require(:booking).permit(:content)
  end

  def game_params
    params.require(:booking).permit(:status, :start_date, :end_date)
  end
end
