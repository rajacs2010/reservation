#################################################################################
#										#
#   File			: sessions_controller.rb			#
#   Project			: Reservation System				#
#   Module			: Login						#
#   Description			: This Cotroller is Used to maintain the  	#
#				  sessions of the user who logged in.		#
#################################################################################

require 'socket'

class SessionsController < ApplicationController




    def new
	   
    end

 

    def create

      	@user = User.authenticate(params[:email], params[:password])

	if @user
	    
	    if @user.count_value == 0

		@one_time_password = rand(999999).to_s
		@user.one_time_password = @one_time_password
		@user.update_attribute(:count_value, 5)
		#current_user.update_attribute(:last_login, Time.now.localtime.to_s)
		UserMailer.one_time_password(@user,@one_time_password).deliver
		redirect_to one_time_password_path

	    else

		if @user.status == 1

		    @count_value = @user.count_value.to_i - 1
		    @user.update_attribute(:last_logged_in, Time.now.localtime.strftime("%d/%m/%Y %I:%M%p").to_s)
		    session[:user_id] = @user.id
		    session[:expires_at] = 2.minutes.from_now
		    #cookies[:user_id] = {:value => @user.id, :expires => 30.minutes.from_now}
		    @user.update_attribute(:count_value, @count_value)
		    redirect_to home_path

		else
		    redirect_to one_time_password_path
		end   #if @user.status == 1

	    end
			
	else
	
	    flash.now.alert = "Invalid email or password"
	    render "new"
		
	end   #if user
      
     
   end   #def create

   ##############################################################################
   #   NAME		: destroy						#
   #   Description	: Delete session of the user who logged in		#
   #   Programmer(s)	: Muthukrishnan						#
   #   Written Date	: 20/03/2013						#
   #   Modified Date	: 20/03/2013						#
   #   Tested By	: 							#
   #   Tested Date	: 							#
   ##############################################################################

    def destroy

	current_user.update_attribute(:last_login, current_user.last_logged_in)
	session.delete(:user_id)
	redirect_to home_path

    end   #def destroy

   ##############################################################################
   #   NAME		: home							#
   #   Description	: Show the home page of Users				#
   #   Programmer(s)	: Muthukrishnan						#
   #   Written Date	: 20/03/2013						#
   #   Modified Date	: 20/03/2013						#
   #   Tested By	: 							#
   #   Tested Date	: 							#
   ##############################################################################

    def login


     render :layout => false
   

    end   #def destroy

end   #class SessionsController < ApplicationController
