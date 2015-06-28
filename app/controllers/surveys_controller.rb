class SurveysController < ApplicationController
  before_action :authorize
	def new
    if is_student?
      if logged_in?
        if is_hundred_days?(current_user.cohort.id) && is_student?
          if current_user.id == params[:student_id].to_i && is_student?
  		      @student = Student.find(params[:student_id])
  		      @survey = Survey.new
          else
            redirect_to current_user, notice: "Are you NUTS? This isn't your survey."
          end
        else
          redirect_to current_user, notice: "You can only complete this survey 100 days after your graduation"
        end
      else
        redirect_to '/login', notice: "Please log in to complete the survey."
      end
    else
      redirect_to '/errors/denied'
    end
	end

	def create
    @survey = Survey.new(survey_params)
    if !params[:survey][:employment_status].nil?
      if @survey.save
        current_user.survey_complete = true
        current_user.is_employed = params[:survey][:employment_status]
        current_user.save
        redirect_to current_user, notice: "You've successfully submitted your survey!"
      else
        @student = Student.find(params[:student_id])
        render :new
      end
    else
      @student = Student.find(params[:student_id])
      @error = "Employment status can't be blank."
      render :new
    end
  end


  def index
    binding.pry
    if !is_student? && current_user.cohorts.exists?(params[:cohort_id])
      @cohort = Cohort.find(params[:cohort_id])
      @web_dev_type = @cohort.surveys.group(:web_dev_type).count
      @position_type = @cohort.surveys.group(:position_type).count
      @thru_outcomes = @cohort.surveys.group(:found_thru_outcomes).count
    else
      redirect_to '/errors/denied'
    end
  end

  def show
    if !is_student? && current_user.cohorts.exists?(params[:cohort_id])
      @survey = Survey.find(params[:id])
    else
      redirect_to '/errors/denied'
    end
  end



  private

  def survey_params
    params.require(:survey).permit(:name, :web_dev_type, :cohort_id, :employment_status, :position_type, :found_thru_outcomes, :company, :employment_date, :enough_preparation, :officer_effectiveness, :should_have_learned, :hurdles, :anything_else)
  end


end

