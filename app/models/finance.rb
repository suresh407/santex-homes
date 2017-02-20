class Finance < ApplicationRecord

validates_presence_of :email, :phone, :first_name, :last_name, :do_you_have_land, :moving_time_frame, :financing, :town_planning_to_build, :state,  :message => 'Please fill the details'

end
