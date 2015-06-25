class CohortsController < ApplicationController


  before_action :authorize, except: [:show]

	def index
		if $sort != nil
      @cohorts = Cohort.order("#{$sort} ASC")
    else
      @cohorts = Cohort.all
    end
		render :index
	end

	def show

    if is_student? && (current_user.cohort.id != params[:id].to_i)
      redirect_to "/students/#{current_user.id}"
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

