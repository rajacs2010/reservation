#################################################################################
#										#
#   File			: availabilities_controller.rb			#
#   Project			: Reservation System				#
#   Module			: Train Management				#
#   Description			: This controller used to maintain all the 	#
#				  details of the availability of seats		#
#################################################################################

class TicketReservationsController < ApplicationController

	autocomplete :station, :station_name

  
    def index

	@stations = Station.all.map(&:station_name).compact.reject(&:blank?)

	#render json: @stations.map(&:station_name)  

respond_to do |format|
		format.html
		format.js
	end
    end 

    def new

	$available_ticket = params[:available_ticket]
	$coach = params[:coach]
	$train_number = params[:train_number]
	$train = Train.find_by_train_number($train_number)
	@travel_date = $travel_date.strftime("%d/%m/%Y")
	$source = $source
	$destination = $destination
	@reservation = TicketReservation.new

    end 

    def create

	@reservation = TicketReservation.new(params[:reservation])
	@reservation.source = $source
	@reservation.train_number = $train_number
	@reservation.travel_date = $travel_date
	@availability = Availability.where(:train_number => $train_number,:travel_date => $travel_date).all
	
	for availability in @availability do

	    if $coach == "First AC"
		availability.first_AC = $available_ticket - 1
	    elsif $coach == "Second AC"
		availability.second_AC = $available_ticket - 1
	    elsif $coach == "Third AC"
		availability.third_AC = $available_ticket - 1
	    elsif $coach == "Chair Car"
		availability.first_AC = $available_ticket - 1
	    elsif $coach == "Sleeper"
		availability.first_AC = $available_ticket - 1
	    elsif $coach == "Sitting"
		availability.first_AC = $available_ticket - 1
	    end #if $coach == "First AC"

	    availability.save!

	end #if $available_ticket > 0
	
	@coach = Coach.find_by_train_number($train_number)
	@seats = Seat.first
	
	if $coach == "First AC"

	    @first_Ac = @coach.first_ac
	
	    

	elsif $coach == "Second AC"

	elsif $coach == "Third AC"

	elsif $coach == "Chair Car"

	elsif $coach == "Sleeper"

	elsif $coach == "Sitting"

	end #if $coach == "First AC"

    end

    def search

     if current_user

	$source = Station.find_by_station_code(params[:source])
	$destination = Station.find_by_station_code(params[:destination])
	$travel_date = Date.parse(params[:date])
	@route = Route.find_by_source_and_destination($source.station_name,$destination.station_name)
	
	if @route

	    @trains = Train.where(:route_id => @route.id).all
	
		begin

		    respond_to do |format|
			
			format.html
			format.xml { render :xml => @trains}

		    end

		rescue
		    redirect_to ticket_reservations_path, :notice => "No Trains available!!!"
		end  #begin
	else

	    redirect_to ticket_reservations_path, :notice => "No Routes available!!!"
	end  #if @route

     else
	redirect_to home_path
     end   #if current_user

    end   # def search

   

end  #class TicketReservationsController < ApplicationController
