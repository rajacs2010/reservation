#################################################################################
#										#
#   File			: availability.rb				#
#   Project			: Reservation System				#
#   Module			: Train Management				#
#   Description			: This model used to maintain all the	 	#
#				  seats the train				#
#################################################################################

class Availability < ActiveRecord::Base
    attr_accessible :train_number, :travel_date, :first_ac, :second_ac, :third_ac, :chair_car, :sleeper, :sitting
end
