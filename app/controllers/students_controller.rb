class StudentsController < ApplicationController

def new
@student = Student.new
end

	def edit
		@student = Student.find(params[:id])
	end

def update
@student = Student.find(params[:id])
	if @student.update(student_params)
			redirect_to "/students/#{@student.id}"
		else
			render :edit
		end
end


end


private

def student_params
	params.require(:student).permit(:name, :email, :phone_number, :city, :state, :password_digest, :skills, :is_employed, :employment_date, :company_name, :status, :survey_complete)
end