class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  include Pundit
  protect_from_forgery with: :exception
  helper_method :current_user, :logged_in?

  rescue_from Pundit::NotAuthorizedError, with: :user_not_authorized


  def logged_in?
    !!current_user
  end

  def current_user
      @current_user ||= User.find_by(id: session[:user_id])
  end

  private

  def user_not_authorized
    flash[:alert] = "Access Denied."
    redirect_to(request.referrer || root_path)
  end


end