module SessionsHelper

	def get_student_name
		@student_name = Student.find(session[:id]).name
	end
	def get_student_id_number
		@student_id_number = Student.find(session[:id]).id_number
	end
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
		
	
end
