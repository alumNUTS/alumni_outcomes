class StudentsController < ApplicationController

  # before_action :authorize, except: [:create, :new]

  def show
      @student = Student.find(params[:id])#session[:student_id])
  end
end
