class HobbiesController < ApplicationController
  before_action :set_hobby, only: [:edit, :update, :destroy]
  before_action :set_resume
  before_action :require_user, except: [:index, :show]
  before_action :require_resume, except: [:index, :show]

  def new
    @hobby = Hobby.new

    respond_to do |format|
      format.html
      format.js
    end
  end

  def create
    @hobby = Hobby.new(hobby_params)
    @hobby.resume_id = @resume.id

    if @hobby.save
      flash[:notice] = "Your hobby was added"
      redirect_to edit_resume_path(@resume)
    else
      render 'hobbies/edit'
    end
  end

  def edit
    respond_to do |format|
      format.html
      format.js
    end
  end

  def update
    if @hobby.update(hobby_params)
      flash[:notice] = "Your hobby was updated"
      redirect_to edit_resume_path(@resume)
    else
      render 'hobbies/edit'
    end
  end

  def destroy
    @hobby.destroy
    flash[:notice] = "Hobby was deleted"
    redirect_to edit_resume_path(@resume)
  end

  private

  def set_hobby
    @hobby = Hobby.find_by(slug: params[:id])
  end

  def set_resume
    @resume = Resume.find_by(slug: params[:resume_id])
  end

  def hobby_params
    params.require(:hobby).permit(:title,:description)
  end
end
