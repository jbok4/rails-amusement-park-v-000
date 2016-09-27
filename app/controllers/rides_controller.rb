class RidesController < ApplicationController

  def create
    @attraction = Attraction.find_by(id: params[:attraction_id])
    @ride = @attraction.rides.create 
    @ride.user = current_user
    @message = @ride.take_ride
    redirect_to user_path(current_user), notice: "#{@message}"
  end

end
