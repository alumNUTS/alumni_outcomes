class AnalyticsController < ApplicationController

 before_action :authorize

	def show
		if !is_student? && current_user.cohorts.exists?(params[:id])
			@cohort = Cohort.find(params[:id])
			@students = Student.where(cohort_id: params[:id])
			@days = (Date.today - @cohort.end_date).to_i
			@grad = []
			@students.each do |student|
				if student.is_employed
					@grad << (student.employment_date - @cohort.end_date).to_i
				end
			end
		else
			redirect_to '/errors/denied'
		end
	end

end
