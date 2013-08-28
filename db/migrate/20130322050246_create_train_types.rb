#################################################################################
#										#
#   File			: 20130322050246_create_train_types.rb		#
#   Project			: Reservation System				#
#   Module			: Train Management				#
#   Description			: create the table to store the Train type	#
#										#
#  										#
#################################################################################

class CreateTrainTypes < ActiveRecord::Migration



  def change

    create_table :train_types do |t|

      t.string :train_type
      t.timestamps

    end   #create_table :train_types do |t|

  end  #  def change

end   #class CreateTrainTypes < ActiveRecord::Migration
