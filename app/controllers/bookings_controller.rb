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

    @data_keys = @bookings.map { |booking| booking.lesson.date.strftime("%d %B %Y") }
    @data_values = @bookings.map { |booking| booking.performance_level }
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

  def edit
    @booking = Booking.find(params[:id])
  end

  def update
    @booking = Booking.find(params[:id])
    @booking.update(booking_params)
    redirect_to booking_path(@booking)
  end

  def destroy
    @title = "Bookings"
    @booking = Booking.find(params[:id])
    @booking.destroy
    redirect_to bookings_path
  end

  private

  def booking_params
    params.require(:booking).permit(:performance_level)
  end
end
