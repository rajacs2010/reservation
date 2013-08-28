#################################################################################
#										#
#   File			: station.rb					#
#   Project			: Reservation System				#
#   Module			: Route Management				#
#   Description			: This model used to maintain all the	 	#
#				  details of the stations to the routes		#
#################################################################################

class Station < ActiveRecord::Base
  attr_accessible :station_name, :station_code
  def self.search(search)
    if search
      where('station_name LIKE ? or station_code LIKE ?', "%#{search}%","%#{search}%")
    else
      scoped
    end
  end
  validates_presence_of :station_code,:station_name
  validates :station_code, :length => {:maximum => 4 }

end   #class Station < ActiveRecord::Base
