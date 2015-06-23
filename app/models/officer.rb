class Officer < ActiveRecord::Base
	
	validates :email, uniqueness: true
  
  has_secure_password

	has_many :cohorts

end