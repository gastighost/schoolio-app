class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  def home
  end

  def user_index
    @users = User.where(user_type: params[:query])
  end
end
