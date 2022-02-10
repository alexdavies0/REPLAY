class BookingsController < ApplicationController
  before_action :set_booking, except: [:index]
  before_action :set_user
  # Need to make sure this displays bookings for the current user only
  def index
    @bookings = Booking.where(user: current_user)
    @mybookings = Booking.all
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

  def destroy
    # @booking = Booking.find(booking_params)
    @booking.delete
    # no need for app/views/restaurants/destroy.html.erb
    redirect_to bookings_path
  end

  private

  def set_booking
    @booking = Booking.find(params[:id])
  end

  # def booking_params
  #   params.require(:booking).permit(:content)
  # end

  def booking_params
    params.require(:booking).permit(:start_date, :end_date, :game_id, :user_id)
  end

  def set_user
    if user_signed_in?
      @user = current_user
    end
  end
end
