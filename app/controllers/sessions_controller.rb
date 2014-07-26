class SessionsController < ApplicationController
  def new
    respond_to do |format|
      format.html
      format.js
    end
  end

  def create
    user = User.find_by(username: params[:username])

    if user && user.authenticate(params[:password])
      resume = Resume.find(user.resume)
      session[:user_id] = user.id
      session[:resume_id] = resume.id
      flash[:notice] = "You've logged in!"
      redirect_to edit_resume_path(resume)
    else
      flash[:error] = "There's something wrong with the username or password"
      redirect_to login_path
    end
  end

  def destroy
    session[:user_id] = nil
    session[:resume_id] = nil
    flash[:notice] = "You've logged out!"
    redirect_to root_path
  end
end
