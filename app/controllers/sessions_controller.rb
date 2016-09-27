class SessionsController < ApplicationController

  def new
    @user = User.new
  end

  def create
    if @user = User.find_by(id: params[:user][:id])
      session[:user_id] = @user.id
      redirect_to user_path(@user), notice: "Welcome back to the theme park!"
    else
      redirect_to :new, alert: "Please enter a valid user name, or create an account."
    end
  end

  def destroy
    session.clear
    redirect_to root_path
  end

end