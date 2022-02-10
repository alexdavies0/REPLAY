class GamesController < ApplicationController
  def index
    @games = Game.all
  end

  def show
    @game = Game.find(params[:id])
    @booking = Booking.new
  end

private

  def game_params
    params.require(:game).permit(:title, :description,)
  end

end
