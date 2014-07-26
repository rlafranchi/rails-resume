class SchoolsController < ApplicationController
  before_action :set_school, only: [:edit, :update, :destroy]
  before_action :set_resume
  before_action :require_user, except: [:index, :show]
  before_action :require_resume, except: [:index, :show]

  def new
    @school = School.new

    respond_to do |format|
      format.html
      format.js
    end
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

  def edit
    respond_to do |format|
      format.html
      format.js
    end
  end

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
    flash[:notice] = "School Deleted"
    redirect_to edit_resume_path(@resume)
  end

  private

  def set_school
    @school = School.find_by(slug: params[:id])
  end

  def set_resume
    @resume = Resume.find_by(slug: params[:resume_id])
  end

  def school_params
    params.require(:school).permit(:name,:degree,:year_graduated)
  end
end
