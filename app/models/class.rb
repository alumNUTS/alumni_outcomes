class Class < ActiveRecord::Base

	belongs_to :officer
	has_many :students

end