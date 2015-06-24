class OfficersController < ApplicationController

	def show
		# setting @officer to the officer currently logged in
		@officer = Officer.find(params[:id])

		# If we want to view the cohorts in the show view along with an employment percentage 
		# to store in cohort_stats
		students = Student.all
		# Selecting only the cohorts that belong to that officer
		cohorts = Cohort.where(officer_id: params[:id])
		# Establighing an empty array to store cohort statistics
		@cohort_stats = []
		# Filling cohort statistics with relevant information
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


<<<<<<< HEAD
=======
	def index
		@students = Student.all
		@classes = Cohort.all
		render :index
>>>>>>> 639ee87ff763a6e293e103e4903710899e58c312
	end

end
