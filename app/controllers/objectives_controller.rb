class ObjectivesController < ApplicationController
  before_action :set_objective, only: [:edit,:update]

  def create
    @resume = Resume.find(params[:resume_id])
    @objective = Objective.new(objective_params)
    @objective.resume_id = @resume.id

    if @objective.save
      flash[:notice] = "Your objective was created."
      redirect_to edit_resume_path(@resume)
    else
      render 'resumes/edit'
    end
  end

  def edit; end

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
    @resume = Resume.find(params[:resume_id])
    @objective = Objective.find(params[:id])
  end

  def objective_params
    params.require(:objective).permit(:description)
  end
end
