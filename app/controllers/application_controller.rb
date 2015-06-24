class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  helper_method :is_hundred_days?, :current_user, :is_student?, :logged_in?
  before_action :alumni, :outcomes

  private

  def is_hundred_days?(cohort_id)
    start_date = Cohort.find(cohort_id).start_date
    date_diff = Date.today - start_date
    date_diff >= 100
  end

  def outcomes
    students = Student.all
    students.each do |student|
      if (Date.today - student.cohort.end_date) > 0
        student.status = "outcome"
        student.save
      end
    end
  end

  def alumni
    students = Student.all
    students.each do |student|
      if student.is_employed && student.survey_complete
        student.status = "alumnus"
        student.save
      end
    end
  end

  def current_user
    if session[:user_id]
      if Student.exists?(:email => session[:user_email])
        @current_user ||= Student.find(session[:user_id])
      else
        @current_user ||= Officer.find(session[:user_id])
      end
    end
  end

  def authorize
    redirect_to '/login' unless current_user
  end

  def is_student?
    Student.exists?(:email => current_user.email)
  end

  def logged_in?
    !current_user.nil?
  end



end
