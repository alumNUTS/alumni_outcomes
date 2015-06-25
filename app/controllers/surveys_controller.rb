class SurveysController < ApplicationController

	def index
		@student = Student.find(params[:student_id])
		@survey = Survey.new
	end

	def create
		@survey = Survey.new
    
    if @survey.save
    	@student = Student.find(params[:student_id])
    	@student.survey_complete = true
    	@student.save

    	redirect_to "/students/", notice: "You've successfully submitted your survey!"
  	else 
  		render :index
  	end
  end

end

