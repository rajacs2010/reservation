#################################################################################
#										#
#   File			: 20130320113236_create_users.rb		#
#   Project			: Reservation System				#
#   Module			: Login						#
#   Description			: create the table to store the user's datas	#
#										#
#################################################################################

class CreateUsers < ActiveRecord::Migration

   ##############################################################################
   #   NAME		: change						#
   #   Description	: Used to create the table named users to 		#
   #   			  maintain the details of Users				#
   #										#
   ##############################################################################

    def change

	create_table :users do |t|

	   t.string :email
	   t.string :password_hash
	   t.string :password_salt
	   t.string :name
	   t.string :address_line_1
	   t.string :address_line_2
	   t.string :city	   
	   t.string :state
	   t.string :country
	   t.integer :pin
	   t.integer :mobile
	   t.datetime :date_of_birth
	   t.string :gender
	   t.string :hint_question
	   t.string :hint_answer
	   t.datetime :created_date
	   t.string :one_time_password
	   t.integer :count_value
	   t.integer :status, :null => false, :default => 1
	   t.string :last_login

	   t.timestamps

	end   #create_table :users do |t|

    end   # def change

end   #class CreateUsers < ActiveRecord::Migration
