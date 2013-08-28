#################################################################################
#										#
#   File			: 20130321061049_create_routes.rb		#
#   Project			: Reservation System				#
#   Module			: Route Management				#
#   Description			: create the table to store Route to the trains	#
#										#
#  										#
#################################################################################

class CreateRoutes < ActiveRecord::Migration


    def change

	create_table :routes do |t|

	    t.string :source
	    t.string :destination
	    t.integer :distance
	    t.timestamps

	end   # create_table :routes do |t|

    end   # def change

end   # class CreateRoutes < ActiveRecord::Migration
