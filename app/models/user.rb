class User < ActiveRecord::Base
  validates :name, presence: true
  has_secure_password

  has_many :rides
  has_many :attractions, through: :rides

  enum role: [:user, :admin]

  def mood
    if self.nausea <= self.happiness
      "happy"
    else
      "sad"
    end
  end

end
