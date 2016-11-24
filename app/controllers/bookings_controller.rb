class BookingsController < ApplicationController

  def index

  @user = current_user
  @bookings = current_user.bookings
  @skill_user = find_user_id(@bookings)
  # @skilled_user = User.find(booking.skill_id).first_name



  end

  def create
    @booking = Booking.new(booking_params)
    @user = current_user
    @booking.user = @user
    if @booking.save
      redirect_to booking_path(@booking)
    else
      render "bookings/new"
    end
  end

  # def my_bookings
  #   @my_bookings = User.joins(bookings: :skill).where(users: {current_user.id}).select("users.email, bookings.starts_at, bookings.duration, booking.accepted, skills.meeting_point, skills.user_id")
  # end



  private

  def booking_params
    params.require(:booking).permit(:starts_at, :duration, :accepted, :skill_id, :user_id, :booking_id)
  end

  def find_user_id(bookings)
    skill_user = []
    bookings.each do |booking|
      @bookings << User.find(booking.skill_id).first_name
    end
    skill_user
  end
end

