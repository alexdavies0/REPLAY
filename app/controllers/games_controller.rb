class GamesController < ApplicationController
  before_action :set_user, except: [:index, :show]

  def index
    if params[:query].present?
      @games = Game.where("title ILIKE ?", "%#{params[:query]}%")
    else
      @games = Game.all
    end
  end

  def show
    @game = Game.find(params[:id])
    @booking = Booking.new
  end

  def new
    @game = Game.new
  end

  def create
    @game = Game.new(game_params)
    @game.user = @user
    @game.save
    if @game.save!
      redirect_to profile_path(@user)
    else
      render :new
    end
  end

private

  def game_params
    params.require(:game).permit(:title, :description, :image_url, :condition)
  end

  def set_user
    @user = current_user
  end

end
