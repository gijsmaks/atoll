class BookingsController < ApplicationController
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
    @booking = Booking.find(params[:id])
  end

  def accept_booking
    @booking = Booking.find(params[:id])
    @booking.status = "accepted"
    #change redirection after changes
    redirect_to islands_path
  end

  def reject
    @booking = Booking.find(params[:id])
    @booking.status = "rejected"
    #change redirection after changes
    redirect_to islands_path
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date)
  end
end
