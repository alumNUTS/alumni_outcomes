class OfficersController < ApplicationController

	# To be used while finding employment rate so we don't have any extra long percentages

	before_action :authorize, :officers_page



	def show
			# setting @officer to the officer currently logged in
			@officer = Officer.find(params[:id])
			# If we want to view the cohorts in the show view along with an employment percentage
			# to store in cohort_stats
			students = Student.all
			# Selecting only the cohorts that belong to that officer
			cohorts = Cohort.where(officer_id: params[:id]).order("id ASC")
			# Establighing an empty array to store cohort statistics
			@cohort_stats = []
			# Filling cohort statistics with relevant information


			cohorts.each do |cohort|
				@cohort_stats << {
					id: cohort.id,
					survey_sent: cohort.survey_sent,
					name: cohort.name,
					day_graduated: cohort.end_date,
						days_til_survey: (cohort.end_date + 100 - Date.today).to_i
				}
			end
	end

	def send_survey
		cohort = Cohort.find(params[:id])
		cohort.students.each do |student|
			UserMailer.welcome_email(student).deliver_now
		end
		cohort.survey_sent = true
		cohort.save
		redirect_to "/officers/#{current_user.id}"
	end
end

	def truncate_to_two (x)
	   (x * 100).truncate/100.0
	end
