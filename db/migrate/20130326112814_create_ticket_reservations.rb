#################################################################################
#										#
#   File			: 20130326112814_create_ticket_reservations.rb	#
#   Project			: Reservation System				#
#   Module			: Ticket Reservation				#
#										#
#   										#
#################################################################################

class CreateTicketReservations < ActiveRecord::Migration

  def change

    create_table :ticket_reservations do |t|

      t.integer :train_number
      t.string :source
      t.string :destination
      t.date :travel_date
      t.string :first_pasenger_name
      t.string :first_pasenger_gender
      t.integer :first_pasenger_age
      t.string :first_passenger_id_card
      t.string :first_passenger_id_card_number
      t.string :second_pasenger_name
      t.string :second_pasenger_gender
      t.integer :second_pasenger_age
      t.string :second_passenger_id_card
      t.string :second_passenger_id_card_number
      t.string :third_pasenger_name
      t.string :third_pasenger_gender
      t.integer :third_pasenger_age
      t.string :third_passenger_id_card
      t.string :third_passenger_id_card_number
      t.string :status
      t.decimal :total_cost
      t.string :pnr_number

      t.timestamps

    end  #create_table :ticket_reservations do |t|

  end  # def change

end  #class CreateTicketReservations < ActiveRecord::Migration
