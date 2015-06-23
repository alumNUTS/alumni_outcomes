class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  helper_method :is_hundred_days?

  def is_hundred_days?(cohort_id)
    start_date = Cohort.find(cohort_id).start_date
    date_diff = Date.today - start_date
    date_diff >= 100
  end

end
