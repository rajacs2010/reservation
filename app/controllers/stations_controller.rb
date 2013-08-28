#################################################################################
#										#
#   File			: stations_controller.rb			#
#   Project			: Reservation System				#
#   Module			: Route Management				#
#   Description			: This controller used to maintain all the 	#
#				  details of the stations to the routes		#
#################################################################################

class StationsController < ApplicationController


    def index
    end   

    def new

	@station = Station.new
	render :layout => false

    end 

    def create

	@station = Station.new(params[:station])
	@station.station_name = @station.station_name.upcase
	@station.station_code = @station.station_code.upcase
	respond_to do |format|

	    if @station.save

		format.html { redirect_to route_home_path }
		

	    else

		format.html { render :action => "new" }
		format.xml { render :xml => @station.errors, :status => :unprocessable_entity }

	    end   #if @station.save

	end  #	respond_to do |format|

    end  

   def edit

      if current_user
	@station = Station.find(params[:id])
      else
	redirect_to home_path
      end
	
   end  

    def update

	@station = Station.find(params[:id])

	respond_to do |format|

	   if @station.update_attributes(:station_name => @station.station_name.upcase, :station_code => @station.station_code.upcase )

		format.html { redirect_to station_list_path }
		format.json { head :no_content }

	   else

		format.html { render :action => "edit" }
		format.json { render :json => @station.errors, :status=> :unprocessable_entity }

	   end   # @user.update_attributes(params[:user])

	end   # respond_to do |format|

    end  

    def station_list

      	@station = Station.search(params[:search]).order("station_name").paginate(:per_page => 5, :page => params[:page])
      	render :layout => false
        #respond_to do |format|
        #  format.html
        #  format.json { render json: StationsDatatable.new(view_context) }
        #end
    end  

   def destroy

	@station = Station.find(params[:id])
    	@station.destroy
	
   end   # def destroy

end   #class StationsController < ApplicationController
