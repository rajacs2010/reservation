#################################################################################
#										#
#   File			: train_type.rb					#
#   Project			: Reservation System				#
#   Module			: Train Management				#
#   Description			: This model used to maintain all the	 	#
#				  type of the Trains				#
#################################################################################

class TrainType < ActiveRecord::Base
  attr_accessible :train_type
end  #class TrainType < ActiveRecord::Base
