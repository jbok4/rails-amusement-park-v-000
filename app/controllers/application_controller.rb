class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def authentication_required
    if !logged_in?
      redirect_to signin_path, :notice => "Please log in."
    end
  end

  def logged_in?
    session[:user_id]
  end
  helper_method :logged_in?

  def current_user
     User.find(session[:user_id])
  end
  helper_method :current_user

end