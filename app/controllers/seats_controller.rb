#################################################################################
#										#
#   File			: seats_controller.rb				#
#   Project			: Reservation System				#
#   Module			: Train Management				#
#   Description			: This controller used to maintain all the 	#
#				  details of the seats				#
#################################################################################

class SeatsController < ApplicationController

    def new
	@seat = Seat.new
    end  #def new

end  #class SeatsController < ApplicationController
