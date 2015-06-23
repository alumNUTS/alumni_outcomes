class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  helper_method :is_hundred_days?
  before_action :alumni, :outcomes
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
      end
    end
  end

  def alumni
    students = Student.all
    students.each do |student|
      if student.is_employed && student.survey_complete
        student.status = "alumnus"
      end
  end

  def

end
