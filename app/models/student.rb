class Student < ActiveRecord::Base

	validates :email, uniqueness: true
  
  has_secure_password

	belongs_to :cohort

end