class SessionsController < ApplicationController

  def new
    if logged_in?
      redirect_to current_user
    end
  end

  def create
    if !logged_in?
    	student = Student.find_by({email: params[:email]})
      officer = Officer.find_by({email: params[:email]})
      user = nil

      if student != nil
        user = student
        path = "/students/#{user.id}"
        session[:user_type] = :student
      elsif officer != nil
        user = officer
        path = "/officers/#{user.id}"
        session[:user_type] = :officer
      end
      if user && user.authenticate(params[:password])
        session[:user_id] = user.id
        redirect_to path
      else
        redirect_to '/login', notice: "Invalid login"
      end
    else
      @error = "Please log out first"
      render :new
    end
  end

  def destroy
    session[:user_id] = nil
    session[:user_type] = nil
    redirect_to '/login'
  end
end
