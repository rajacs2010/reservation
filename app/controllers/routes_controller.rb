#################################################################################
#										#
#   File			: routes_controller.rb				#
#   Project			: Reservation System				#
#   Module			: Route Management				#
#   Description			: This controller used to maintain all the 	#
#				  details of the routes to the trains		#
#################################################################################

class RoutesController < ApplicationController


    def new

	@route = Route.new

    end  

    def create

	@route = Route.new(params[:route])
	@route.route = @route.source + " - " + @route.destination

	respond_to do |format|

	    if @route.save

		format.html { redirect_to routes_list_path }
		format.xml { render :xml => @route, :status => :created, :location => @route }

	    else

		format.html { render :action => "new" }
		format.xml { render :xml => @route.errors, :status => :unprocessable_entity }

	    end   #if @route.save

	end  #	respond_to do |format|

    end 

   def edit

      if current_user
	@route = Route.find(params[:id])
      else
	redirect_to home_path
      end
	
   end   

    def update

	@route = Route.find(params[:id])

	respond_to do |format|

	   if @route.update_attributes(params[:route])

		format.html { redirect_to routes_list_path }
		format.json { head :no_content }

	   else

		format.html { render :action => "edit" }
		format.json { render :json => @route.errors, :status => :unprocessable_entity }

	   end   # @user.update_attributes(params[:user])

	end   # respond_to do |format|

    end  

    def routes_list

	@route = Route.all
	render :layout => false
    end  

   def destroy

	@route = Route.find(params[:id])
    	@route.destroy
	
   end   # def destroy

end   #class RoutesController < ApplicationController
