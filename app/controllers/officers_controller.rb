class OfficersController < ApplicationController


	def index
		@students = Student.all
		@classes = Cohort.all
		render :index
	end

end