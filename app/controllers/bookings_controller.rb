class BookingsController < ApplicationController

  def index

  @user = current_user
  @bookings = current_user.bookings
  @skills = current_user.skills

  end
  # @skilled_user = User.find(booking.skill_id).first_name


  def show
    @booking = Booking.find(params[:id])
    @user = current_user
    @booker = @booking.user
    @booked = @booking.skill.user
    @skill = @booking.skill
    @hash = Gmaps4rails.build_markers(@skill) do |skill, marker|
      marker.lat skill.latitude
      marker.lng skill.longitude
      # marker.infowindow render_to_string(partial: "/flats/map_box", locals: { flat: flat })
    end

  end

  def create
    @booking = Booking.new(booking_params)
    year = params[:booking]['date(1i)'].to_i
    month = params[:booking]['date(2i)'].to_i
    day = params[:booking]['date(3i)'].to_i
    hour = params[:booking]['date(4i)'].to_i
    @booking.skill = Skill.find(params[:booking][:skill])
    @booking.date = DateTime.new(year, month, day, hour)
    @booking.starts_at = @booking.date.to_date
    @booking.duration = params[:booking][:duration].to_i
    @booking.user = current_user
    if @booking.save
      redirect_to booking_path(@booking)
    else
      render "users/show"
    end
  end


  def accepted
    @booking = Booking.find(params[:id])
    @booking.accepted = true
    @booking.save
    redirect_to bookings_path
  end

  def rejected
    @booking = Booking.find(params[:id])
    @booking.accepted = false
    @booking.save
    redirect_to bookings_path
  end



















  # def my_bookings
  #   @my_bookings = User.joins(bookings: :skill).where(users: {current_user.id}).select("users.email, bookings.starts_at, bookings.duration, booking.accepted, skills.meeting_point, skills.user_id")
  # end



  private

  def booking_params
    params.require(:booking).permit(:date, :starts_at, :duration, :accepted, :skill_id, :user_id, :booking_id)
  end


end

