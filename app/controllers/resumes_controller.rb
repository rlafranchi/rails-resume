class ResumesController < ApplicationController
    before_action :set_resume, only: [:show, :edit, :destroy]
    before_action :require_user, except: [:index, :show]
    before_action :require_resume, except: [:index, :show]

  def index
    @resumes = Resume.all
    @new_resume = Resume.new
  end

  def show
    @objective = @resume.objective
    @skills = @resume.skills
    @schools = @resume.schools
    @jobs = @resume.experiences
    @hobbies = @resume.hobbies
    @references = @resume.references
    @customs = @resume.customs
  end

  def edit
    @objective = Objective.new
    @skills = @resume.skills
    @schools = @resume.schools
    @jobs = @resume.experiences
    @hobbies = @resume.hobbies
    @references = @resume.references
    @customs = @resume.customs
  end

  def create
    @resume = Resume.new
    @resume.user = current_user
    @resume.save
    redirect_to edit_resume_path(@resume)
  end

  def destroy
    @resume.destroy
    redirect_to root_path
  end

  private

  def set_resume
    @resume = Resume.find(params[:id])
  end
end
