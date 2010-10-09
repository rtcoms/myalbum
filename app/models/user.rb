class User < ActiveRecord::Base
  attr_accessible :username, :email, :password, :password_confirmation

  attr_accessor :password_confirmation

  has_many :albums
  
  acts_as_authentic do |c| 
	c.login_field = :username 
	c.email_field = :email  
 end 
end
