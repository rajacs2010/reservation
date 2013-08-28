#################################################################################
#										#
#   File			: application_controller.rb			#
#   Project			: Reservation System				#
#   Description			: This Cotroller is Maintain all the	  	#
#				  details of the application			#
#################################################################################

class ApplicationController < ActionController::Base

    protect_from_forgery
    helper_method :current_user
    before_filter :set_no_cache

   ##############################################################################
   #   NAME		: set_no_cache						#
   #   Description	: Maintain the cache of a application 			#
   #  										#		
   ##############################################################################

    def set_no_cache

	response.headers["Cache-Control"] = "no-cache, no-store, max-age=0, must-revalidate"
	response.headers["Pragma"] = "no-cache"
	response.headers["Expires"] = "30.minutes"
	
    end   #def set_no_cache

    public

   ##############################################################################
   #   NAME		: current_user						#
   #   Description	: Used to maintain the sessions of a current user 	#
   #  										#
   ##############################################################################

    def current_user

	@current_user ||= User.find(session[:user_id]) if session[:user_id]

    end   # def current_user


end   # class ApplicationController < ActionController::Base
