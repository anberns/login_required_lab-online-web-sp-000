class SessionsController < ApplicationController

  def new
  end

  def create
    if params[:name] and params[:name] != ""
      session[:name] = params[:name]
      redirect_to(controller: "application", action: "welcome") and return
    else 
      redirect_to controller: "sessions", action: "new"
    end
  end

  def destroy
    session.delete :name 
    redirect_to controller: "application", action: "welcome"
  end

end