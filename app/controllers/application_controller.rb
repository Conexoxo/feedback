class ApplicationController < ActionController::Base
<<<<<<< HEAD
	helper_method :is_student?
	
	def is_student?
    current_user.role == 'Alumno' if user_signed_in?
  end
	
	def after_sign_in_path_for(resource)
		courses_path
=======
	before_action :configure_devise_params, if: :devise_controller?

	def configure_devise_params
		devise_parameter_sanitizer.permit(:sign_up) do |teacher|
			teacher.permit(:name, :email, :run, :last_name, :born, :password, :password_confirmation)
		end
	end
	def configure_devise_params
		devise_parameter_sanitizer.permit(:sign_up) do |student|
			student.permit(:name, :email, :run, :last_name, :born, :password, :password_confirmation)
		end
>>>>>>> 56d0a17c5bc229ad199dd81940324efeb5a05171
	end
end
