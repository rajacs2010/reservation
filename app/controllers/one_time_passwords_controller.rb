#################################################################################
#										#
#   File			: one_time_passwords_controller.rb		#
#   Project			: Reservation System				#
#   Module			: Login						#
#   Description			: This Cotroller is Used to send the one time 	#
#				  password to the user via mail to confirm	#
#				  identity					#
#################################################################################

class OneTimePasswordsController < ApplicationController


  
    def new
    end

 

   def check

      begin

	@user = User.find_by_email(params[:email])

	if @user.one_time_password == params[:one_time_password]

	    @user.update_attribute(:status,1)
	    @user.update_attribute(:last_logged_in, Time.now.localtime.to_s)
	    session[:user_id] = @user.id
	    session[:expires_at] = 30.minutes.from_now
	    redirect_to home_path

	else

	    
	    @user.update_attribute(:status,0)
	    redirect_to home_path, :notice => "Invalid One-Time Password"

	end   #if @user.one_time_password == params[:one_time_password]

      rescue
	redirect_to one_time_password_path
      end   # begin
	
    end   # def check
end
