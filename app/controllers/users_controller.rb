class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
    @booking = Booking.new
    @skill = Skill.find(params[:id])
  end
end
