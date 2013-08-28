#################################################################################
#										#
#   File			: cost.rb					#
#   Project			: Reservation System				#
#   Module			: Train Management				#
#   Description			: This model used to maintain all the	 	#
#				  details of the Train's cost/KM		#
#################################################################################

class Cost < ActiveRecord::Base

  attr_accessible :first_ac, :second_ac, :third_ac, :chair_car, :sitting, :sleeper
  validates_presence_of :first_ac, :second_ac, :third_ac, :chair_car, :sitting, :sleeper
  validates :first_ac, :second_ac, :third_ac, :chair_car, :sitting, :sleeper, :format => { :with => /^\d+??(?:\.\d{0,2})?$/ }, :numericality => {:greater_than => 0, :less_than => 1000000}

end #class Cost < ActiveRecord::Base
