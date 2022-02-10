class BookingsController < ApplicationController
  before_action :set_game, except: [:index, :show]

  # Need to make sure this displays bookings for the current user only
  def index
    # @bookings = @booking.user
    @booking.user = current_user
    @games = Game.where(user: current_user)
    @bookings = Booking.where(user: current_user)
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
    @booking.user = current_user
    @booking.save
    if @booking.save
      redirect_to booking_path(@booking)
    else
      render :new
    end
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
