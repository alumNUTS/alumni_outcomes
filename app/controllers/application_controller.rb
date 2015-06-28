class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  helper_method :is_hundred_days?, :current_user, :is_student?, :logged_in?

  private

  def is_hundred_days?(cohort_id)
    start_date = Cohort.find(cohort_id).start_date
    date_diff = Date.today - start_date
    date_diff >= 100
  end

  def current_user
    if session[:user_id]
      if session[:user_type] == "student"
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
    session[:user_type] == "student"
  end

  def logged_in?
    !current_user.nil?
  end

  def officers_page
    redirect_to '/errors/denied' unless !is_student?
  end
end
