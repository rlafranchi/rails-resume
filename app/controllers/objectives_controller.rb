class ObjectivesController < ApplicationController
  before_action :set_resume
  before_action :set_objective, only: [:edit,:update]
  before_action :require_user, except: [:index, :show]
  before_action :require_resume, except: [:index, :show]

  def create

    @objective = Objective.new(objective_params)
    @objective.resume_id = @resume.id

    if @objective.save
      flash[:notice] = "Your objective was created."
      redirect_to edit_resume_path(@resume)
    else
      render 'resumes/edit'
    end
  end

  def edit
    respond_to do |format|
      format.html
      format.js
    end
  end

  def update
    if @objective.update(objective_params)
      flash[:notice] = "Your objective was updated."
      redirect_to edit_resume_path(@resume)
    else
      render 'edit'
    end
  end

  private

  def set_objective
    @objective = Objective.find_by(slug: params[:id])
  end

  def set_resume
    @resume = Resume.find_by(slug: params[:resume_id])
  end

  def objective_params
    params.require(:objective).permit(:description)
  end
end
