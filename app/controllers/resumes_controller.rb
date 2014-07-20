class ResumesController < ApplicationController

  def index
    @resumes = Resume.all
    @new_resume = Resume.new
  end

  def show
    @resume = Resume.find(params[:id])
    @objective = @resume.objective
  end

  def edit
    @resume = Resume.find(params[:id])
    @objective = Objective.new

    @skills = @resume.skills
    @new_skill = Skill.new
    @schools = @resume.schools
    @new_school = School.new
    @jobs = @resume.experiences
    @new_job = Experience.new
    # @projects = @jobs.projects
    @hobbies = @resume.hobbies

    @references = @resume.references
    @customs = @resume.customs
  end

  def create
    @resume = Resume.new
    @resume.user_id = User.first.id
    @resume.save
    redirect_to resume_path(@resume)
  end

  def destroy
    @resume = Resume.find(params[:id])
    @resume.destroy
    redirect_to root_path
  end
end
