class ChatroomsController < ApplicationController
  def show
    @chatroom = Chatroom.find(params[:id])
    @message = Message.new
  end

  def create
    @chatroom = Chatroom.new(booking_id: params[:booking_id], name: current_user.name)
    @chatroom.save
    redirect_to chatroom_path(@chatroom)
  end
end
