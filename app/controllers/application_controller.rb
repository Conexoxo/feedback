class ApplicationController < ActionController::Base
	helper_method :is_student?
	
	def is_student?
    current_user.role == 'Alumno' if user_signed_in?
  end
	
	def after_sign_in_path_for(resource)
		courses_path
	end
end
