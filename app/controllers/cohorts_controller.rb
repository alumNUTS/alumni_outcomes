class CohortsController < ApplicationController

	def index
	@cohorts = Cohort.all
	render :index
	end

	def show
	@cohort = Cohort.find(params[:id])
	render :show
	end

end