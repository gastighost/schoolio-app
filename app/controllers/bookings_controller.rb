class BookingsController < ApplicationController
  def index
    @title = "Your Bookings"
    @bookings = Booking.all
    @type = ""
    if current_user.user_type == "teacher"
      @type = "student"
    elsif current_user.user_type == "student"
      @type = "teacher"
    end
  end

  def show
    @title = "Your Bookings"
    @booking = Booking.find(params[:id])
  end

  def create
    @title = "Bookings"
    @booking = Booking.new(lesson_id: params[:lesson_id], user_id: current_user.id)
    @booking.save
    redirect_to bookings_path
    flash[:notice] = "Booking for #{@booking.lesson.subtopic.description} confirmed!"
  end

  def destroy
    @title = "Bookings"
    @booking = Booking.find(params[:id])
    @booking.destroy
    redirect_to bookings_path
  end
end
