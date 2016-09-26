class Ride < ActiveRecord::Base
  belongs_to :attraction
  belongs_to :user

  def take_ride
    user = User.find(self.user_id)
    attraction = Attraction.find(self.attraction_id)
    if !user.tickets.nil? && !user.height.nil?
      if user.tickets < attraction.tickets && user.height < attraction.min_height
        "Sorry. You do not have enough tickets the #{attraction.name}. You are not tall enough to ride the #{attraction.name}."
      elsif user.tickets < attraction.tickets
        "Sorry. You do not have enough tickets the #{attraction.name}."
      elsif user.height < attraction.min_height
        "Sorry. You are not tall enough to ride the #{attraction.name}."
      else
        user.tickets = user.tickets - attraction.tickets
        user.nausea = user.nausea + attraction.nausea_rating
        user.happiness = user.happiness + attraction.happiness_rating
        attraction.users << user
        attraction.save
        user.save
      end
    else
      "Sorry. You do not have enough tickets the #{attraction.name}. You are not tall enough to ride the #{attraction.name}."
    end
  end


end
