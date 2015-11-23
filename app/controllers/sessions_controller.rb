class SessionsController < ApplicationController
  def new
  end

  def create
		user = User.find_by_id_number(params[:id_number])
		session[:id_number] = user.id_number
		redirect_to events_url
		
  end

  def destroy
		session[:id_number] = nil
		redirect_to events_url
  end
end
