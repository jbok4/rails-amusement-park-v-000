class Ride < ActiveRecord::Base
  belongs_to :attraction
  belongs_to :user

  def take_ride
    if user.tickets >= attractions.tickets && user.height >= attraction.height
  end


end
