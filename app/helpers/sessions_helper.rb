module SessionsHelper

	def get_student_name
		@student_name = Student.find(session[:id]).name
	end
	def get_student_id_number
		@student_id_number = Student.find(session[:id]).id_number
	end

end
