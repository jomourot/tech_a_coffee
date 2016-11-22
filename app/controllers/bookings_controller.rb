class BookingsController < ApplicationController
  def create
    @user = User.find(params[:user_id])
    @booking = Booking.new(booking_params)
    @booking.user = @booking
    if @booking.save
      redirect_to new_skill_user_booking_path(@user)
    else
      render "user/show"
    end
  end

  private
  def booking_params
    params.require(:booking).permit(:starts_at, :duration, :accepted, :skill_id, :user_id)
  end
end
