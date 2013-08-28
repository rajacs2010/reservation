#################################################################################
#										#
#   File			: availabilities_controller.rb			#
#   Project			: Reservation System				#
#   Module			: Train Management				#
#   Description			: This controller used to maintain all the 	#
#				  details of the availability of seats		#
#################################################################################

class AvailabilitiesController < ApplicationController

 

    def new
	@availability = Availability.new
    end 

    def create

      if current_user

      Range.new(Time.now.to_i, 2.months.from_now.to_i).step(1.day) do |date|
  	
	@availability = Availability.new(params[:availability])
	@date = Time.at(date)
	@train_number = @availability.train_number.to_i
	@coach = Coach.find_by_train_number(@train_number)
	@seat = Seat.last
	@availability.train_number = @train_number
	@availability.travel_date = @date.strftime("%d/%m/%Y")
	@availability.first_AC = @coach.first_ac.to_i * @seat.FAC.to_i
	@availability.second_AC = @coach.second_ac.to_i * @seat.SAC.to_i
	@availability.third_AC = @coach.third_ac.to_i * @seat.TAC.to_i
	@availability.chair_car = @coach.chair_car.to_i * @seat.CC.to_i
	@availability.sleeper = @coach.sleeper.to_i * @seat.SL.to_i
	@availability.sitting = @coach.sitting.to_i * @seat.SS.to_i
	@availability.save!

      end # Range.new(Time.now.to_i, 5.days.from_now.to_i).step(1.day) do |seconds_since_epoch|

      redirect_to train_list_path
     
     else
	redirect_to home_path
     end

    end  #def create

end  #class AvailabilitiesController < ApplicationController
