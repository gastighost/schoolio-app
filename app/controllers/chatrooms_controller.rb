class ChatroomsController < ApplicationController
  def show
    @chatroom = Chatroom.find(params[:id])
    @message = Message.new
  end

  def create
    @booking = Booking.find(params[:booking_id])
    @chatroom = Chatroom.new(booking_id: @booking.id, name: @booking.lesson.subtopic.description)
    @chatroom.save
    redirect_to chatroom_path(@chatroom)
  end
end
