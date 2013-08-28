#################################################################################
#										#
#   File			: costs_controller.rb				#
#   Project			: Reservation System				#
#   Module			: Train Management				#
#   Description			: This controller used to maintain all the 	#
#				  cost of the Trains seat/km			#
#################################################################################

class CostsController < ApplicationController

    def new

	@cost = Cost.new

    end 
    def create

	@cost = Cost.new(params[:cost])
	
	respond_to do |format|

	    if @cost.save

		format.html { redirect_to home_path }
		format.xml { render :xml => @cost, :status => :created, :location => @cost }

	    else

		format.html { render :action => "new" }
		format.xml { render :xml => @cost.errors, :status => :unprocessable_entity }

	    end   #if @station.save

	end  #	respond_to do |format|

    end  

    def edit

	if current_user
	  
	   id = Cost.find(:last)
	   @cost = Cost.find(id.id)

	else
	   redirect_to home_path
	end
	
    end 

    def update


	@cost = Cost.find(params[:id])

	respond_to do |format|

	   if @cost.update_attributes(params[:cost])

		format.html { redirect_to home_path }
		format.json { head :no_content }

	   else

		format.html { render :action => "edit" }
		format.json { render :json => @cost.errors, :status=> :unprocessable_entity }

	   end   # @user.update_attributes(params[:user])

	end   # respond_to do |format|

    end   # def update

end   #class CostsController < ApplicationController
