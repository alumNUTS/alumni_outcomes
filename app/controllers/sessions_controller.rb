class SessionsController < ApplicationController
  def new

  end

  def create
    if !logged_in?
    	student = Student.find_by({email: params[:email]})
      officer = Officer.find_by({email: params[:email]})
      user = nil

      if student != nil
        user = student
        path = "/students/#{user.id}"
      elsif officer != nil
        user = officer
        path = "/officers/#{user.id}"
      end

      if user && user.authenticate(params[:password])
        session[:user_id] = user.id
        session[:user_email] = user.email
        redirect_to path

      else
        redirect_to '/login'
      end
    else
      @error = "Please log out first"
      render :new
    end
  end

  def destroy
    session[:user_id] = nil
    session[:user_email] = nil
    redirect_to '/login'
  end
end
