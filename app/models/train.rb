#################################################################################
#										#
#   File			: train.rb					#
#   Project			: Reservation System				#
#   Module			: Train Management				#
#   Description			: This model used to maintain all the	 	#
#				  details of the Trains				#
#################################################################################

class Train < ActiveRecord::Base

    attr_accessible :route_id, :train_number, :train_name, :departure_time, :travel_time, :train_type
    validates_presence_of :route_id, :train_number, :train_name, :departure_time, :travel_time, :train_type
    validates_uniqueness_of :train_number
    validates_numericality_of :train_number
    validates :travel_time, :format => { :with => /^\d+??(?:\.\d{0,2})?$/ }, :numericality => {:greater_than => 0, :less_than => 100000000}
    belongs_to :route
    #has_one :coach

end   #class Train < ActiveRecord::Base
