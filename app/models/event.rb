class Event < ActiveRecord::Base
 has_many :attends
  def self.pretty_new
     ev = self.new
     ev_time = Time.now.beginning_of_hour + 1.hour
     ev.start_time = ev_time
     ev.end_time = ev_time + 1.hour
 
     return ev
  end
end
