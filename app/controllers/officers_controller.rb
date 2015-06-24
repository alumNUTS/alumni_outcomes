class OfficersController < ApplicationController


	def index
		# setting @officer to the officer currently logged in from the current_user method
		# from the applications controller
		# @officer = current_user


		# If we want to view the cohorts in the index view along with an employment percentage 
		# to stored in cohort_stats
		students = Student.all
		cohorts = Cohort.all
		@cohort_stats = []
		cohorts.each do |cohort|
			@cohort_stats << {
				id: cohort.id,
				name: cohort.name,
				employed: (
					students.where(cohort_id: cohort.id).count.to_f - students.where(cohort_id: cohort.id).group(:is_employed).count[false].to_f
					)/students.where(cohort_id: cohort.id).count.to_f,
				day_graduated: cohort.end_date,
				days_til_survey: (cohort.end_date + 100 - Date.today).to_i
			}
		end


	end

end