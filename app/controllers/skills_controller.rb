class SkillsController < ApplicationController
  skip_before_action :authenticate_user!, only: :index


  def index
    @skill = params[:name]
    required_skills =  Skill.where(name: params[:name])
    @skills = Skill.where.not(latitude: nil, longitude: nil)

    @hash = Gmaps4rails.build_markers(@skills) do |skill, marker|
      marker.lat skill.latitude
      marker.lng skill.longitude
    end
    if required_skills.any?
      @skills = required_skills
      @found = true
    else
      @skills = Skill.all
    end
  end


  def show
    @skill = Skill.find(params[:id])
    @skill_coordinates = { lat: @skill.latitude, lng: @skill.longitude }
  end



  def new
    @skill = Skill.new

  end

  def create
    @skill = Skill.new(skill_params)
    @skill.user = current_user
    if @skill.save
      redirect_to skills_path
    else
      render :new
    end
  end


private

def skill_params
 params.require(:skill).permit(:name, :description, :meeting_point, :price)

end








end











