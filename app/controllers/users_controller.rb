class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @booking = Booking.new
    @skill = Skill.find(params[:skill_id])
    @skills = Skill.where.not(latitude: nil, longitude: nil)
    @hash = Gmaps4rails.build_markers(@skill) do |skill, marker|
      marker.lat skill.latitude
      marker.lng skill.longitude
      # marker.infowindow render_to_string(partial: "/flats/map_box", locals: { flat: flat })
    end
  end
end
