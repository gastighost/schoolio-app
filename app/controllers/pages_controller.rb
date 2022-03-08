class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  def home
  end

  def user_index
    @title = "Teacher list"
    @users = User.where(user_type: params[:query])
  end

  def user_settings
    @titel = "Settings"
  end

end
