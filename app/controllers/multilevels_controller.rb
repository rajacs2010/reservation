

class MultilevelsController < ApplicationController

	helper_method :sort_column, :sort_direction

	

	def index

		@routes = Route.all
		@trains = Train.all
		
	end

	def check

		@value = 12
		
	end

	def sort
		@stations = Station.search(params[:search]).order(sort_column + " " + sort_direction).paginate(:per_page => 5, :page => params[:page])
		respond_to do |format|
			format.html
			format.js
		end
	end
	private
  
	  def sort_column
	    Station.column_names.include?(params[:sort]) ? params[:sort] : "station_name"
	  end
	  
	  def sort_direction
	    %w[asc desc].include?(params[:direction]) ? params[:direction] : "asc"
	  end

end  #class MultilevelsController < ApplicationController
