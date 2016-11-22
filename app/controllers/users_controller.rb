class UsersController < ApplicationController

  def show
    @users = User.all
    @user = User.find(params[:id])
    @booking = Booking.new
  end

end
