class SessionsController < ApplicationController

  def new
    redirect_to "/login"
  end

  def create

    if session[:username] != nil
      redirect_to '/'
    elsif params[:username] == nil
      redirect_to '/login'
    else
      session[:name] = params[:username]
      redirect_to '/'
    end
  end

  def destroy
    session.delete :username
  end

end
