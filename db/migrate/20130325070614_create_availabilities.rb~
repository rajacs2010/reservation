#################################################################################
#										#
#   File			: 20130325070614_create_availabilities.rb	#
#   Project			: Reservation System				#
#   Module			: Train Management				#
#										#
#   										#
#################################################################################

class CreateAvailabilities < ActiveRecord::Migration

  def change

    create_table :availabilities do |t|

	t.integer :train_number
	t.date :travel_date
	t.integer :first_AC
	t.integer :second_AC
	t.integer :third_AC
	t.integer :chair_car
	t.integer :sleeper
	t.integer :sitting

	t.timestamps

    end   #create_table :availabilities do |t|

  end  #def change

end   #class CreateAvailabilities < ActiveRecord::Migration
