#################################################################################
#										#
#   File			: 20130320123820_create_hint_questions.rb	#
#   Project			: Reservation System				#
#   Module			: Login						#
#   Description			: This Migration is Used to maintain the 	#
#				  hint question to the users			#
#										#
#  										#
#################################################################################

class CreateHintQuestions < ActiveRecord::Migration



  def change

    create_table :hint_questions do |t|

      t.string :hint_question
      t.timestamps

    end  #create_table :hint_questions do |t|

  end  #def change

end  #class CreateHintQuestions < ActiveRecord::Migration
