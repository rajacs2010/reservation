#################################################################################
#										#
#   File			: forgot_passwords_controller.rb		#
#   Project			: Reservation System				#
#   Module			: Login						#
#   Description			: This Cotroller is Used to send the users's 	#
#				  password to the mail				#
#################################################################################

class ForgotPasswordsController < ApplicationController

   

    def new
    end   

   def check

     begin

	@user = User.find_by_email(params[:email])
	@random_password = Array.new(10).map { (65 + rand(58)).chr }.join
	@user.password = @random_password
	@user.save!
	UserMailer.forgot_password(@user,@random_password).deliver   #Send the mail it contains random password to the user
        redirect_to home_path

     rescue
	redirect_to forgot_password_path
     end   # begin
	
   end   # def check


end   # class ForgotPasswordsController < ApplicationController
