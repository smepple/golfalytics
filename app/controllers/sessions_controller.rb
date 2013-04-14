class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by_email(params[:email])
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to :root, success: "Welcome back"
    else
      flash.now.error = "Invalid email/password combo"
      render 'new'
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to :root, success: "Come back soon"
  end
end
