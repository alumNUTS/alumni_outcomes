class OfficersController < ApplicationController


	def index
		@students = Student.all
		@classes = Class.all
	end

end