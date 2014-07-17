class ResumesController < ApplicationController

  def index
    @resumes = Resume.all
    @new_resume = Resume.new
  end

  def show
    @resume = Resume.find(params[:id])
    @objective = @resume.objective
  end

  def create
    @resume = Resume.new
    @resume.save
    redirect_to resume_path(@resume)
  end

  def destroy
    @resume = Resume.find(params[:id])
    @resume.destroy
    redirect_to root_path
  end
end
