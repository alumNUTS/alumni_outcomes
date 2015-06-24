class CohortsController < ApplicationController

  before_action :authorize, except: [:show]
	def index

		@cohorts = Cohort.all
		render :index
	end

	def show
		@cohort = Cohort.find(params[:id])
		@students = Student.all
	end

	def new
    if !is_student?
		  @cohort = Cohort.new
    else
      redirect_to '/'
    end
	end

	def create
    @cohort = Cohort.new
    @cohort.name = params["cohort"]["name"]

    #below will work after sessions is enabled
    @cohort.officer_id = current_user.id
    @cohort.start_date = params["cohort"]["start_date"]
    @cohort.end_date = params["cohort"]["end_date"]

    if @cohort.save
      redirect_to "/officers"
    else
      render :new
    end
	end

end

