class SessionsController < ApplicationController

  def new
  end

  def create
    binding.pry
    if params[:username] == nil
    session[:username] = params[:username]
    redirect_to '/'
  end

  def destroy
    session.delete :username
  end

end
