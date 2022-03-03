class BookingsController < ApplicationController
  def index
    @bookings = Booking.all
    @type = ""
    if current_user.user_type == "teacher"
      @type = "student"
    elsif current_user.user_type == "student"
      @type = "teacher"
    end
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
    @booking = Booking.find(params[:id])
    @booking.destroy
    redirect_to bookings_path
  end
end
