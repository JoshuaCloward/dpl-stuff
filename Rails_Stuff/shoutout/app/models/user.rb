class User < ActiveRecord::Base

  validates :first_name, :last_name, :mood, presence: true
  has_many :shouts
  def self.find_by_mood(mood)
    where(mood: mood)
  end

end
