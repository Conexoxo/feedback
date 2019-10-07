class ApplicationController < ActionController::Base
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
	end
end
