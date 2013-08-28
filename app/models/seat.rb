#################################################################################
#										#
#   File			: seat.rb					#
#   Project			: Reservation System				#
#   Module			: Train Management				#
#   Description			: This model used to maintain all the	 	#
#				  seats per coach				#
#################################################################################

class Seat < ActiveRecord::Base
  attr_accessible :CC, :FAC, :SAC, :SL, :SS, :TAC
end  #class Seat < ActiveRecord::Base
