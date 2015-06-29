	class OfficersController < ApplicationController

	# To be used while finding employment rate so we don't have any extra long percentages
	def truncate_to_two (x)
	   (x * 100).truncate/100.0
	end

	before_action :authorize

	def show
		if !is_student?
			# setting @officer to the officer currently logged in
			@officer = Officer.find(params[:id])
			# If we want to view the cohorts in the show view along with an employment percentage
			# to store in cohort_stats
			students = Student.all
			# Selecting only the cohorts that belong to that officer
			cohorts = Cohort.where(officer_id: params[:id])
			# Establighing an empty array to store cohort statistics
			@cohort_stats = []
			count = 0
			@survey_reminder = false
			# Filling cohort statistics with relevant information
			
			cohorts.each do |cohort|
				@cohort_stats << {
					id: cohort.id,
					survey_sent: cohort.survey_sent,
					name: cohort.name,
					employed: students.where(cohort_id: cohort.id).count != 0 ? (
						truncate_to_two((students.where(cohort_id: cohort.id).count.to_f - students.where(cohort_id: cohort.id).group(:is_employed).count[false].to_f
						)/students.where(cohort_id: cohort.id).count.to_f) * 100) : 0.0,
					day_graduated: cohort.end_date,
					days_til_survey: (cohort.end_date + 100 - Date.today).to_i
				}
				if cohort.end_date + 100 < Date.today && cohort.survey_sent != true
      		count = 1
    		end
			end

			if count == 1
				@survey_reminder = true
			end
		else
			redirect_to '/errors/denied'
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
