class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  helper_method :current_user, :logged_in?, :current_resume

  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end

  def current_resume
    @current_resume ||= Resume.find(session[:resume_id]) if session[:resume_id]
  end

  def logged_in?
    !!current_user
  end

  def require_user
    if !logged_in?
      flash[:error] = "Must be logged in"
      redirect_to root_path
    end
  end

  def require_resume
    if @resume.id != current_resume.id && logged_in?
      redirect_to edit_resume_path(current_resume)
    elsif @resume.user
    end
  end
end
