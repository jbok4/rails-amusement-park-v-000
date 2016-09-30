class SessionsController < ApplicationController

  def new
    @user = User.new
  end

  def create
    @user = User.find_by(name: params[:session][:name])
    if @user && @user.authenticate(params[:session][:password])
    log_in @user
    redirect_to user_path(@user)
    else
      flash[:danger] = 'Invalid email/password combination' 
      render 'new'
    end
  end

  def destroy
    session.clear
    redirect_to root_path
  end

end