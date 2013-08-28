#################################################################################
#										#
#   File			: trains_controller.rb				#
#   Project			: Reservation System				#
#   Module			: Train Management				#
#   Description			: This controller used to maintain all the 	#
#				  details of the Trains				#
#################################################################################

class TrainsController < ApplicationController

 

    def index
    end   

    def new

	@train = Train.new

    end 

    def create

	      @route = Route.find_by_id(params[:train][:route_id])
        puts "XXXXXXXXXXXXXXXXXX #{params[:route_id].to_s}XXXXXXXXXXXXXXXXXXX"
      	@train = @route.trains.create(params[:train])
      	random_value =  [(0..9)].map{|i| i.to_a}.flatten			#generate the random value
      	@train.train_number = (0..6).map{ random_value[rand(random_value.length)] }.join

      	respond_to do |format|

      	    if @train.save

          		format.html { redirect_to new_coach_path }
          		format.xml { render :xml => @train, :status => :created, :location => @train }

      	    else

          		format.html { render :action => "new" }
          		format.xml { render :xml => @train.errors, :status => :unprocessable_entity }

      	    end   #if @station.save

	      end  #	respond_to do |format|

    end  

    def edit

	if current_user
	   @train = Train.find(params[:id])
	else
	   redirect_to home_path
	end
	
    end  

    def update


	@train = Train.find(params[:id])

	respond_to do |format|

	   if @train.update_attributes(params[:train])

		format.html { redirect_to train_list_path }
		format.json { head :no_content }

	   else

		format.html { render :action => "edit" }
		format.json { render :json => @train.errors, :status => :unprocessable_entity }

	   end   # @user.update_attributes(params[:user])

	end   # respond_to do |format|

    end   

    def train_list

	@train = Train.all

    end 

   def destroy

	@train = Train.find(params[:id])
    	@train.destroy
	
	respond_to do |format|
   
	      format.html { redirect_to train_list_path }
	      format.json { head :no_content }

	end   # respond_to do |format|

   end   # def destroy

end   #class TrainsController < ApplicationController
