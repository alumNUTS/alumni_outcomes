class SessionsController < ApplicationController
  def new
  end

  def create
  	student = Student.find_by({email: params[:email]})
    officer = Officer.find_by({email: params[:email]})
    user = nil

    if student != nil {
      user = student
    } elsif officer != nil {
      user = officer
    }

    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      #redirect_to user_path(user) # /users/:id
      redirect_to '/'
    else
      redirect_to '/login'
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to '/login'
  end
end
