class StudentsController < ApplicationController

  before_action :authorize, except: [:create, :new, :show]
  helper_method :students_page?
  def show
    if logged_in?
      if is_student? && (!current_user.cohort.students.exists?(params[:id]))
        redirect_to "/students/#{session[:user_id]}"
      else
        @student = Student.find(params[:id])
      end
    else
      redirect_to '/'
    end
  end

  def index
    @students = Student.all
    if session[:user_type] == 'student'
      redirect_to "/students/#{session[:user_id]}"
    end
  end

  def new
    @student = Student.new
    @cohorts = Cohort.all
  end

  def create
    @student = Student.new(student_params)
    if @student.save
      redirect_to "/students/"
    else
      render :new
    end
  end

	def edit
		@student = Student.find(params[:id])
    @cohorts = Cohort.all
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

def students_page?
  student = Student.find(params[:id])
  is_student? && student == current_user
end

def student_params
  params.require(:student).permit(:name, :email, :cohort_id, :phone_number, :city, :state, :password_digest, :skills, :is_employed, :employment_date, :company_name, :status, :survey_complete)
end



end




