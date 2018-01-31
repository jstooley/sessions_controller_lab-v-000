class SessionsController < ApplicationController

  def new
  end

  def create
    binding.pry
    if params[:username] == nil
      redirect_to 'new'
    else
      session[:username] = params[:username]
      redirect_to '/'
    end
  end

  def destroy
    session.delete :username
  end

end
