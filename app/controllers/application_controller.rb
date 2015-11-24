class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
	helper :all

	def is_root
		ans = false
		if session[:id_number]===999
			ans = true
		end
		ans
	end
		
	def is_teacher
			ans = false
			if Teacher.find_by_id_number(session[:id_number])
				ans = true
			end
			ans
	end
	
	def get_teacher
		ans = false
		if is_teacher
			ans = Teacher.find_by_id_number(session[:id_number])
		end
		ans
	end

	def is_student
			ans = false
			if Student.find_by_id_number(session[:id_number])
				ans = true
			end
			ans
	end
	
	def get_student
		ans = false
		if is_student
			ans = Student.find_by_id_number(session[:id_number])
		end
		ans
	end



	protected

		def authorize
			unless session[:id_number]===999
				redirect_to login_url, notice: "Root privelages required"
			end
	end

end
