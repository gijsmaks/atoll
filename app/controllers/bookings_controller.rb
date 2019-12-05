class BookingsController < ApplicationController
  def index
    @bookings = Booking.all
  end

  def new
    @booking = Booking.new
    @island = Island.find(params[:island_id])
  end

  def create
    @booking = Booking.new(booking_params)
    @island = Island.find(params[:island_id])
    @booking.user = current_user
    @booking.island = @island

    if @booking.save
      redirect_to booking_path(@booking)
    else
      render :new
    end
  end

  def show

  end

  def booking_params
    params.require(:booking).permit(:user_id, :island_id, :start_date, :end_date, :status)
  end
end
