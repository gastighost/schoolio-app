class BookingsController < ApplicationController
  def index
    @type = ""
    if current_user.user_type == "teacher"
      @title = "Your Courses"
      @type = "student"
      @courses = Course.where(user_id: current_user.id)
    elsif current_user.user_type == "student"
      @title = "Your Bookings"
      @type = "teacher"
      @bookings = Booking.where(user_id: current_user.id)
      @data_keys1 = @bookings.map { |booking| booking.lesson.date.strftime("%d.%m.%Y") }
      @data_values1 = @bookings.map { |booking| booking.performance_level.nil? ? booking.performance_level = 0 : booking.performance_level }

      @complete = []
      @data_keys1.each_with_index do |_key, index|
        @complete.push([@data_keys1[index], @data_values1[index]])
      end
      @completed = @complete.sort { |a, b| a[0] <=> b[0] }
      @data_keys = @completed.map { |data| data[0] }
      @data_values = @completed.map { |data| data[1] }
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
