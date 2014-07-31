class Shout < ActiveRecord::Base
  belongs_to :user
  validates :message, presence: true

    def mood_adjuster(mood = "")
      if mood == 'Angry'
        message.upcase + '!!'
      elsif mood == 'Happy'
        message + ' :D'
      elsif mood == 'Sad'
        message.downcase + '...'
      else
        message
      end
    end

    def self.by_time(time)
      where(["created_at < ?", time])
    end
end
