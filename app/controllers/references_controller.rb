class ReferencesController < ApplicationController
  before_action :set_reference, only: [:edit, :update, :destroy]
  before_action :set_resume
  before_action :require_user, except: [:index, :show]
  before_action :require_resume, except: [:index, :show]

  def new
    @reference = Reference.new

    respond_to do |format|
      format.html
      format.js
    end
  end

  def create
    @reference = Reference.new(reference_params)
    @reference.resume_id = @resume.id

    if @reference.save
      flash[:notice] = "Your reference was added"
      redirect_to edit_resume_path(@resume)
    else
      render 'references/edit'
    end
  end

  def edit
    respond_to do |format|
      format.html
      format.js
    end
  end

  def update
    if @reference.update(reference_params)
      flash[:notice] = "Your reference was updated"
      redirect_to edit_resume_path(@resume)
    else
      render 'references/edit'
    end
  end

  def destroy
    @reference.destroy
    flash[:notice] = "Reference was deleted"
    redirect_to edit_resume_path(@resume)
  end

  private

  def set_reference
    @reference = Reference.find_by(slug: params[:id])
  end

  def set_resume
    @resume = Resume.find_by(slug: params[:resume_id])
  end

  def reference_params
    params.require(:reference).permit(:name, :relationship, :phone, :email, :company)
  end
end
