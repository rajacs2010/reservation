#################################################################################
#										#
#   File			: 20130322044433_create_trains.rb		#
#   Project			: Reservation System				#
#   Module			: Train Management				#
#   Description			: create the table to store the Train details	#
#										#
#  										#
#################################################################################

class CreateTrains < ActiveRecord::Migration


    def change

	create_table :trains do |t|

	   t.integer :route_id
	   t.integer :train_number
	   t.string :train_name
	   t.decimal :departure_time
	   t.decimal :travel_time
	   t.string :train_type
	   t.timestamps

	end   #create_table :trains do |t|

    end   #def change

end   #class CreateTrains < ActiveRecord::Migration
