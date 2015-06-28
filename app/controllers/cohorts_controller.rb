class CohortsController < ApplicationController


  before_action :authorize, except: [:show]

	def index
    if !is_student?
      if $sort != nil
        @cohorts = Cohort.order("#{$sort} ASC")
      else
        @cohorts = Cohort.all
        web_type = []
        position = []
        thru_outcomes = []
        @full_stack = 0
        @front_end = 0
        @back_end = 0
        @full_time = 0
        @temp_to_perm = 0
        @freelance = 0
        @true = 0
        @false = 0
        @cohorts.each do |cohort|
          web_type << cohort.surveys.group(:web_dev_type).count
          position << cohort.surveys.group(:position_type).count
          thru_outcomes << cohort.surveys.group(:found_thru_outcomes).count
        end
        web_type.each do | type |
          @full_stack += + type[1].to_f
          @front_end += + type[2].to_f
          @back_end += + type[3].to_f
        end
        position.each do |p|
          @full_time += + p[1].to_f
          @temp_to_perm += +p[1].to_f
          @freelance += + p[1].to_f
        end
        thru_outcomes.each do |thru|
          @true += thru[true].to_f
          @false += thru[false].to_f
        end
      end
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

