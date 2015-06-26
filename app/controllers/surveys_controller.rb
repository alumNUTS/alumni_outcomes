class SurveysController < ApplicationController

	def new
    if logged_in?
      if is_hundred_days?(current_user.cohort.id) && is_student?
        if current_user.id == params[:student_id].to_i && is_student?
		      @student = Student.find(params[:student_id])
		      @survey = Survey.new
        else
          redirect_to current_user, notice: "Are you NUTS? This isn't your survey"
        end
      else
        redirect_to current_user, notice: "You can complete this survey only 100 days after your graduation"
      end
    else
      redirect_to '/login', notice: "Please, log in to complete the survey"
    end
	end

	def create
    @survey = Survey.new
    if @survey.save
      current_user.survey_complete = true
      current_user.save
      redirect_to current_user, notice: "You've successfully submitted your survey!"
    else
      @student = Student.find(params[:student_id])
      render :new
    end
  end

  def index
  end

  def show
  end

end

