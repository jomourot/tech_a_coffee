class BookingsController < ApplicationController
  def create
    @booking = Booking.new(booking_params)
    @booking.user = current_user

    if @booking.save
      redirect_to user_booking_path user_id: current_user.id, id: @booking.id
    else
      render "users/show"
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:starts_at, :duration, :accepted, :skill_id, :user_id, :booking_id)
  end
end
