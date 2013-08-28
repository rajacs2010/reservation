#################################################################################
#										#
#   File			: users.rb					#
#   Project			: Reservation System				#
#   Module			: Login						#
#   Description			: Maintain all the users of the application	#
#################################################################################

class User < ActiveRecord::Base

   attr_accessible :email, :password, :password_confirmation, :image
   attr_accessible :city, :created_date, :address_line_1, :address_line_2, :mobile, :name, :pin,:state, :country, :gender
   attr_accessible :hint_question, :hint_answer, :date_of_birth

   validates_presence_of :password, :email,:mobile, :name, :pin, :city, :address_line_1, :state
   validates_uniqueness_of :email, :mobile
   validates :email, :format => { :with => /^[^@][\w.-]+@[\w.-]+[.][a-z]{2,4}$/i }
   validates_numericality_of :mobile, :pin
   validates :mobile, :length => { :is => 10 }
   validates :pin, :length => { :maximum => 6 }

   attr_accessor :password

   before_save :encrypt_password
  
   validates_confirmation_of :password
   validates_presence_of :password, :on => :create
   validates_presence_of :email
   validates_uniqueness_of :email
   
   has_one :account
 

 
   def self.authenticate(email, password)

	user = find_by_email(email)

	if user && user.password_hash == BCrypt::Engine.hash_secret(password, user.password_salt)
	    user
	else
	    nil
	end   # if user && user.password_hash == BCrypt::Engine.hash_secret(password, user.password_salt)

   end   

   def encrypt_password

	if password.present?

	   self.password_salt = BCrypt::Engine.generate_salt
	   self.password_hash = BCrypt::Engine.hash_secret(password, password_salt)

	end   #if password.present?

   end   #def encrypt_password

end   # class User < ActiveRecord::Base
