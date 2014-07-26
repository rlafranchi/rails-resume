class UsersController < ApplicationController
  before_action :set_user, only: [:edit, :update]
  before_action :set_resume, only: [:edit, :update]

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    @resume = Resume.new

    if @user.save
      flash[:notice] = "You are registered"
      @resume.user = @user
      @resume.save
      session[:user_id] = @user.id
      session[:resume_id] = @resume.id
      redirect_to edit_resume_path(@resume)
    else
      render :new
    end
  end

  def edit

  end

  def update
    if @user.update(user_params)
      flash[:notice] = "Profile Updated"
      redirect_to edit_resume_path(@resume)
    else
      render :new
    end
  end

  private

  def user_params
    params.require(:user).permit(:username, :password, :phone, :email, :first_name, :last_name, :address, :city, :state, :zip_code)
  end

  def set_user
    @user = User.find(params[:id])
  end

  def set_resume
    @resume = Resume.find_by(user_id: session[:user_id])
  end
end
