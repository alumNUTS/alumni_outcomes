class Student < ActiveRecord::Base

	validates :email
  
  has_secure_password

	belongs_to :cohort

end