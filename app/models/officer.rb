class Officer < ActiveRecord::Base
	
	has_secure_password

	has_many :cohorts

end