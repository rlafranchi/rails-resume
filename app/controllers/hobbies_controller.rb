class HobbiesController < ApplicationController
  before_action :set_hobby, only: [:edit, :update, :destroy]
  before_action :set_resume

  def new
    @hobby = Hobby.new
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

  def edit; end

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
    @hobby = Hobby.find(params[:id])
  end

  def set_resume
    @resume = Resume.find(params[:resume_id])
  end

  def hobby_params
    params.require(:hobby).permit(:title,:description)
  end
end
