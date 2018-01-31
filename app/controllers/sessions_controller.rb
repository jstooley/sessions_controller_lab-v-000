class SessionsController < ApplicationController

  def new
    redirect_to "/login"
  end

  def create

    if params[:username] == nil
      redirect_to '/login'
    else
      session[:username] = params[:username]
      redirect_to '/'
    end
  end

  def destroy
    session.delete :username
  end

end
