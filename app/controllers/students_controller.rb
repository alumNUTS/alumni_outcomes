class StudentsController < ApplicationController

  before_action :authorize, except: [:create, :new, :show]
  helper_method :students_page?
  def show
    if is_student? && (!current_user.cohort.students.exists?(params[:id]))
      redirect_to "/students/#{session[:user_id]}"
    else
      @student = Student.find(params[:id])
      if @student.is_employed && @student.survey_complete
        @student.status = "alumnus"
        @student.save
      end
    end
  end

  def index
    if !is_student?
      if params[:search]
        @students = Student.search(params[:search]).order("created_at DESC")
      else
        @students = Student.all
      end
    else
      redirect_to "/errors/denied"
    end
  end

  def new
    if is_student?
      @student = Student.new
      @cohorts = Cohort.all
    else
      redirect_to '/errors/denied'
    end
  end

  def create
    @student = Student.new(student_params)
    if @student.save
      session[:user_id] = @student.id
      session[:user_type] = :student
      redirect_to @student
    else
      @cohorts = Cohort.all
      render :new
    end
  end

	def edit
    if is_student?
  		@student = Student.find(session[:user_id])
      @cohorts = Cohort.all
    else
      redirect_to '/errors/denied'
    end
	end

  def update
    @student = Student.find(session[:user_id])

	  if @student.update(student_params)
		  redirect_to @student
	  else
      @cohorts = Cohort.all
		  render :edit
	  end
  end

  def destroy
    student = Student.find(params[:id])
    student.destroy
    session[:user_id] = nil
    session[:user_type] = nil
    redirect_to '/'
  end

  private

  def students_page?
    student = Student.find(params[:id])
    is_student? && student == current_user
  end

  def student_params
    params.require(:student).permit(:name, :email, :cohort_id, :phone_number, :city, :state, :password, :password_confirmation, :skills, :is_employed, :employment_date, :company_name)
  end



end




