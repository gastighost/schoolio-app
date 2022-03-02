class BookingsController < ApplicationController
  def index
    @bookings = Booking.all
  end

  def show
    @booking = Booking.find(params[:id])
  end

  def create
    @booking = Booking.new(lesson_id: params[:lesson_id], user_id: current_user.id)
    @booking.save
    redirect_to booking_path(@booking.id)
  end

  def destroy
  end
end
