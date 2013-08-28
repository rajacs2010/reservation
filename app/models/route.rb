#################################################################################
#										#
#   File			: route.rb					#
#   Project			: Reservation System				#
#   Module			: Route Management				#
#   Description			: This model used to maintain all the	 	#
#				  details of the routes				#
#################################################################################

class Route < ActiveRecord::Base

    attr_accessible :source, :destination, :distance
    validates_presence_of :source,:destination,:distance
    validates :distance, :numericality => true
    has_many :trains, :dependent => :destroy

end
