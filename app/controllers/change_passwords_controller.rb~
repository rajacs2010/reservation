#################################################################################
#										#
#   File			: change_passwords_controller.rb		#
#   Project			: Reservation System				#
#   Module			: Login						#
#   Description			: This Cotroller is Used to change the  	#
#				  password of a user				#
#################################################################################

class ChangePasswordsController < ApplicationController

   

    def new
    end  

  

   def change

     begin
     
       if current_user

	@user = User.find_by_email(params[:email])

	if User.authenticate(params[:email], params[:old_password]) == @user
			
	    @user.password = params[:new_password]
	    @user.password_confirmation = params[:new_password_confirmation]
			
	    if @user.save
		redirect_to home_path
	    else
		redirect_to change_password_path, :notice => "Password not match Re-Type Password!!!"
	    end   # if @user.save
				
	else
	   redirect_to change_password_path, :notice => "Invalid Old password!"
	end   # if User.authenticate(params[:email], params[:old_password]) == @user
	else
		redirect_to home_path
     	end

     rescue
	redirect_to change_password_path, :notice => "Sorry!!! Unable to change password!"
     end  # begin
		
    end  #def change

end   #class ChangePasswordsController < ApplicationController
