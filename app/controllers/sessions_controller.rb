class SessionsController < ApplicationController
 def new
  end
  def create 
  	#p @params[:email]
    user = User.find_by_email(params[:email])

  	#	raise @user.inspect
    if user
      session[:user_email] = user.email
      redirect_to charges_url, notice: 'Logged in!'
    else
      render :new
    end
  end
  def destroy
    session[:user_email] = nil
    redirect_to root_url, notice: 'Logged out!'
  end
end
