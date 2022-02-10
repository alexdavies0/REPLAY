class PagesController < ApplicationController

  def home
    @games = Game.all
  end

  def profile
    @user = current_user
    @games = Game.where(user: current_user)
  end
end
