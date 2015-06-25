class AnalyticsController < ApplicationController

	def show
		@cohort = Cohort.find(params[:id])
		@students = Student.where(cohort_id: params[:id])
		@days = (Date.today - @cohort.end_date).to_i
		@grad = []
		@students.each do |student|
			if student.is_employed
				@grad << (student.employment_date - @cohort.end_date).to_i
			end
		end
	end

end