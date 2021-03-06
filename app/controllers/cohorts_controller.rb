class CohortsController < ApplicationController


  before_action :authorize, except: [:show]

	def index
    if !is_student?
      if $sort != nil
        @cohorts = Cohort.order("#{$sort} ASC")
      else
        @cohorts = Cohort.all
      end
        surveys = Survey.all
        @web_dev_type = surveys.group(:web_dev_type).count
        @position_type = surveys.group(:position_type).count
        @thru_outcomes = surveys.group(:found_thru_outcomes).count
  	   render :index
    else
      redirect_to '/errors/denied'
    end
	end

	def show
    if is_student? && (current_user.cohort.id != params[:id].to_i)
      redirect_to "/errors/denied"
    else
      @cohort = Cohort.find(params[:id])

      @students = Student.where(cohort_id: @cohort.id)
    end
	end

	def new
    if !is_student?
  		@cohort = Cohort.new
      @officer = Officer.find(session[:user_id])
    else
      redirect_to '/errors/denied'
    end
	end

	def create
    @cohort = Cohort.new
    @cohort.name = params["cohort"]["name"]
    @cohort.officer_id = current_user.id
    @cohort.start_date = params["cohort"]["start_date"]
    @cohort.end_date = params["cohort"]["end_date"]
    if @cohort.save
      redirect_to "/officers/#{session[:user_id]}"
    else
      render :new
    end
	end

  def sort
    $sort = params[:sort_by]
    redirect_to "/cohorts"
  end

end

