#################################################################################
#										#
#   File			: coach.rb					#
#   Project			: Reservation System				#
#   Module			: Train Management				#
#   Description			: This model used to maintain all the	 	#
#				  details of the Train's coach			#
#################################################################################

class Coach < ActiveRecord::Base

   attr_accessible :train_number, :first_ac, :second_ac, :third_ac, :chair_car, :sitting, :sleeper
   validates_presence_of :train_number, :chair_car, :first_ac, :second_ac, :sitting, :sleeper, :third_ac
   validates_numericality_of :train_number, :chair_car, :first_ac, :second_ac, :sitting, :sleeper, :third_ac
   validates_uniqueness_of :train_number
   belongs_to :train

end  #class Coach < ActiveRecord::Base
