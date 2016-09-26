class UsersController < ApplicationController

  def home
  end

  def new
  end

  def create
  end

  def show
  end

  def edit
  end

  def update
  end

  def sign_in
  end

  def user_params
    params.require(:user).permit(:name, :nausea, :happiness, :tickets, :height, :admin)
  end


end