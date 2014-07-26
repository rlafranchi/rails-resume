class CustomsController < ApplicationController
  before_action :set_custom, only: [:edit, :update, :destroy]
  before_action :set_resume
  before_action :require_user, except: [:index, :show]
  before_action :require_resume, except: [:index, :show]

  def new
    @custom = Custom.new

    respond_to do |format|
      format.html
      format.js
    end
  end

  def create
    @custom = Custom.new(custom_params)
    @custom.resume_id = @resume.id

    if @custom.save
      flash[:notice] = "Your custom was added"
      redirect_to edit_resume_path(@resume)
    else
      render 'customs/edit'
    end
  end

  def edit
    respond_to do |format|
      format.html
      format.js
    end
  end

  def update
    if @custom.update(custom_params)
      flash[:notice] = "Your custom was updated"
      redirect_to edit_resume_path(@resume)
    else
      render 'customs/edit'
    end
  end

  def destroy
    @custom.destroy
    flash[:notice] = "Custom was deleted"
    redirect_to edit_resume_path(@resume)
  end

  private

  def set_custom
    @custom = Custom.find_by(slug: params[:id])
  end

  def set_resume
    @resume = Resume.find_by(slug: params[:resume_id])
  end

  def custom_params
    params.require(:custom).permit(:title,:description)
  end
end
