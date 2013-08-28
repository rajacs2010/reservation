#################################################################################
#										#
#   File			: sessions_controller.rb			#
#   Project			: Reservation System				#
#   Module			: Mailing					#
#   Description			: This class is used to send the mail to the  	#
#				  given mail id					#
#################################################################################

require 'socket'

class UserMailer < ActionMailer::Base

    default :from => "rajacs34@gmail.com"


    def registration_confirmation(user)

	@user = user
	ip=Socket.ip_address_list.detect{|intf| intf.ipv4_private?}
	@ip = ip.ip_address if ip
	mail(:to => user.email, :subject => "Registered", :from => "info@qadaxemployeesbank.com")

    end   

    def one_time_password(user,one_time_password)

	@user = user
	@pass = one_time_password
	mail(:to => user.email, :subject => "One Time Password", :from => "info@qadaxemployeesbank.com")

    end   

    def forgot_password(user,random_password)

	@user = user
    	@pass =	random_password
	mail(:to => user.email, :subject => "New Password", :from => "info@qadaxemployeesbank.com")

    end   # def forgot_password(user,random_password)

end   # class UserMailer < ActionMailer::Base
