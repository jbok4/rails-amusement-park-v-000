class SessionsController < ApplicationController

  def new
    @user = User.new
  end

  def create
    user = User.find_by(name: params[:session][:name])
    if user && user.authenticate(params[session][:password]
      log_in user
      redirect_to user_path(@user)
    else
      flash.now[:danger] = 'Invalid email/password combination'
      render 'new'
      #redirect_to :new, alert: "Please enter a valid user name, or create an account."
    end
  end

  def destroy
    log_out
    redirect_to root_path
  end

end