class SkillsController < ApplicationController


  def index
    @skill = params[:name]
    required_skills =  Skill.where(name: params[:name])
    if required_skills.any?
      @skills = required_skills
      @found = true
    else
      @skills = Skill.all
    end
  end

end









