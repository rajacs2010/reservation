#################################################################################
#										#
#   File			: 20130322124006_create_costs.rb		#
#   Project			: Reservation System				#
#   Module			: Train Management				#
#   Description			: create the table to store the Train seat cost	#
#										#
#  										#
#################################################################################

class CreateCosts < ActiveRecord::Migration

  
  def change

    create_table :costs do |t|

      t.decimal :first_ac
      t.decimal :second_ac
      t.decimal :third_ac
      t.decimal :chair_car
      t.decimal :sleeper
      t.decimal :sitting

      t.timestamps

    end   #    create_table :costs do |t|

  end  #def change

end   #class CreateCosts < ActiveRecord::Migration
