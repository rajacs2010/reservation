class TempReservation < ActiveRecord::Base
  attr_accessible :destination, :first_pasenger_age, :first_pasenger_gender, :first_pasenger_name, :first_passenger_id_card, :first_passenger_id_card_number, :pnr_number, :second_pasenger_age, :second_pasenger_gender, :second_pasenger_name, :second_passenger_id_card, :second_passenger_id_card_number, :source, :status, :third_pasenger_age, :third_pasenger_gender, :third_pasenger_name, :third_passenger_id_card, :third_passenger_id_card_number, :total_cost, :train_number, :travel_date
end
