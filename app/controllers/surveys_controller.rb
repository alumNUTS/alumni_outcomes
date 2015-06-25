class SurveysController < ApplicationController

	def index
		@student = Student.find(params[:student_id])
		@survey = Survey.new

	end

	def create
    # if current_user.id != params[:student_id]
  		@survey = Survey.new
      
      if @survey.save
      	@student = Student.find(params[:student_id])
      	@student.survey_complete = true
      	@student.save
        flash.keep[:notice] = "You've successfully submitted your survey!"
      	redirect_to @student
    	else 
        @student = Student.find(params[:student_id])
    		render :index
    	end
  #   else
  #     @student = Student.find(params[:student_id])
  #     @error = "Are you NUTS? This isn't your survey"
  #     render :index
  #   end
   end

end

