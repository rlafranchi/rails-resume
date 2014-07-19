class SchoolsController < ApplicationController
  before_action :set_school, only: [:edit, :update, :destroy]
  before_action :set_resume

  def new
    @school = School.new
  end

  def create
    @school = School.new(school_params)
    @school.resume_id = @resume.id
    if @school.save
      flash[:notice] = "School saved"
      redirect_to edit_resume_path(@resume)
    else
      render 'schools/edit'
    end
  end

  def edit; end

  def update
    if @school.update(school_params)
      flash[:notice] = "School was updated"
      redirect_to edit_resume_path(@resume)
    else
      render 'schools/edit'
    end
  end

  def destroy
    @school.destroy
  end

  private

  def set_school
    @school = School.find(params[:id])
  end

  def set_resume
    @resume = Resume.find(params[:resume_id])
  end

  def school_params
    params.require(:school).permit(:name,:degree,:year_graduated)
  end
end