#################################################################################
#										#
#   File			: users_controller.rb				#
#   Project			: Reservation System				#
#   Module			: Login						#
#   Description			: Maintain all the users of the application	#
#										#
#################################################################################

class UsersController < ApplicationController

   

   def index

	@user = User.all
	
	respond_to do |format|

	    format.html # index.html.erb
	    format.json { render :json => @user }

	end   # respond_to do |format|

   end 

   def show

	@user = User.find(params[:id])
	
	respond_to do |format|

	   format.html # show.html.erb
	   format.json { render :json => @user }

	end

   end   

   def new

	@user = User.new
	render :layout => false
 
   end   

   def edit

      if current_user
	@user = User.find(params[:id])
      else
	redirect_to home_path
      end
	
   end   
   def create

    # begin

	@user = User.new(params[:user])
	@user.country = "India"
	@user.count_value = 5
	@one_time_password = rand(999999).to_s
	@user.one_time_password = @one_time_password
	@user.last_login = Time.now.localtime.strftime("%d/%m/%Y %I:%M%p").to_s
	
	respond_to do |format|

	    if @user.save
		
		
		UserMailer.registration_confirmation(@user).deliver
		session[:user_id] = @user.id
		session[:expires_at] = 30.minutes.from_now
		format.html { redirect_to home_path }
		format.xml { render :xml => @user, :status => :created, :location => @user }

	    else

		format.html { render :action => "new" }
		format.xml { render :xml => @user.errors, :status => :unprocessable_entity }

	    end   #if @user.save

	end   #respond_to do |format|

    #  rescue
	#redirect_to sign_up_path
     # end   # begin

   end   

   def update

	@user = User.find(params[:id])

	respond_to do |format|

	   if @user.update_attributes(params[:user])

		format.html { redirect_to :controller => :users, :action => :users_list, :id => current_user.id }
		format.json { head :no_content }

	   else

		format.html { render :action => "edit" }
		format.json { render :json => @user.errors, :status => :unprocessable_entity }

	   end   # @user.update_attributes(params[:user])

	end   # respond_to do |format|

   end   

   def destroy

	@user = User.find(params[:id])
    	@user.destroy
	
	respond_to do |format|
   
	      format.html { redirect_to :controller => :users, :action => :users_list, :id => 1, :notice => "Thanking You!!!." }
	      format.json { head :no_content }

	end   # respond_to do |format|

   end   

   def users_list

	@user = User.find(params[:id])
		
	respond_to do |format|

	    format.html 
	    format.json { render :json => @user }

	end   # respond_to do |format|

   end   # def users_list

end   # class UsersController < ApplicationController
