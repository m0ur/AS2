class SessionsController < ApplicationController
  def new
  end

  def create
		#student = Student.find_by_id_number(params[:id_number])
		student = Student.find_by_id_number(params[:id_number])
		session[:student_id_number] = student.id_number
		session[:id] = student.id
		session[:student_name] = student.name
		redirect_to events_url
		
  end

  def destroy
		session[:student_id_number] = nil
		redirect_to events_url
  end
end
