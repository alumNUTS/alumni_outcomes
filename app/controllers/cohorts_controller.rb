class CohortsController < ApplicationController

	before_action :authorize

	def index

		@cohorts = Cohort.all
		render :index
	end

	def show
		@cohort = Cohort.find(params[:id])
		@students = Student.where(cohort_id: @cohort.id)
	end

	def new
		@cohort = Cohort.new
    @officer = Officer.find(session[:user_id])
	end

	def create
    @cohort = Cohort.new
    @cohort.name = params["cohort"]["name"]

    #below will work after sessions is enabled
    @cohort.officer_id = current_user.id
    @cohort.start_date = params["cohort"]["start_date"]
    @cohort.end_date = params["cohort"]["end_date"]

    if @cohort.save
      redirect_to "/officers/#{session[:user_id]}"
    else
      render :new
    end
	end

end

