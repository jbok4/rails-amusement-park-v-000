class User < ActiveRecord::Base
  validates :name, presence: true
  has_secure_password

  has_many :rides
  has_many :attractions, through: :rides

  #enum role: [:user, :admin]

  def mood
    if self.happiness && self.nausea 
      mood = self.happiness - self.nausea 
      mood > 0 ? "happy" : "sad"
    end
  end

end
