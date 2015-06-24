class StudentsController < ApplicationController

  before_action :authorize, except: [:create, :new, :show]
  helper_method :is_student?
  def show
    if session[:user_id]
      @student = Student.find(params[:id])
    else
      redirect_to '/'
    end
  end

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

  def destroy
    student = Student.find(params[:id])
    student.destroy
    redirect_to '/'
  end

private

def student_params
  params.require(:student).permit(:name, :email, :phone_number, :city, :state, :password_digest, :skills, :is_employed, :employment_date, :company_name, :status, :survey_complete)
end

def is_student?
  student = Student.find(params[:id])
  !student.nil?
end

end




