#################################################################################
#										#
#   File			: coach_details_controller.rb			#
#   Project			: Reservation System				#
#   Module			: Train Management				#
#   Description			: This controller used to maintain all the 	#
#				  details of the Train's coaches		#
#################################################################################

class CoachesController < ApplicationController



    def new

	@coach = Coach.new

    end  

    def create

	@coach = Coach.new(params[:coach])
	
	respond_to do |format|

	    if @coach.save

		format.html { redirect_to new_availability_path }
		format.xml { render :xml => @coach, :status => :created, :location => @coach }

	    else

		format.html { render :action => "new" }
		format.xml { render :xml => @coach.errors, :status => :unprocessable_entity }

	    end   #if @station.save

	end  #	respond_to do |format|

    end  

    def edit

	if current_user
	   @coach = Coach.find(params[:id])
	else
	   redirect_to home_path
	end
	
    end   

    def update


	@coach = Coach.find(params[:id])

	respond_to do |format|

	   if @coach.update_attributes(params[:coach])

		format.html { redirect_to coach_list_path }
		format.json { head :no_content }

	   else

		format.html { render :action => "edit" }
		format.json { render :json => @coach.errors, :status => :unprocessable_entity }

	   end   # @user.update_attributes(params[:user])

	end   # respond_to do |format|

    end   # def update


 

    def coach_list

	@coach = Coach.all

    end  #  def station_list


   def destroy

	@coach = Coach.find(params[:id])
    	@coach.destroy
	
	respond_to do |format|
   
	      format.html { redirect_to coach_list_path }
	      format.json { head :no_content }

	end   # respond_to do |format|

   end   # def destroy

end   #class CoachesController < ApplicationController
