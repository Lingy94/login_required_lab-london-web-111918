class SessionsController < ApplicationController

  def create
    if params[:name].nil? || params[:name].length <= 0
      redirect_to sessions_new_path
    else
      session[:name] = params[:name]
      redirect_to root_path
    end
  end

  def destroy
    session.delete(:name)
    redirect_to login_path
  end
end
