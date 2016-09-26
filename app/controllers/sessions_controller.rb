class SessionsController < ApplicationController

  def create
  end

  def destroy
    if logged_in?
      session.destroy
    end
    redirect_to root_path
  end

end