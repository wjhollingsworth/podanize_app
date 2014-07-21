class User < ActiveRecord::Base

 has_many :newsletters
 has_many :pta_happenings
 has_many :shoutouts
 has_many :upcoming_events

end
