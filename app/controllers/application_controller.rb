class ApplicationController < ActionController::Base
	before_action :configure_devise_params, if: :devise_controller?

	def configure_devise_params
		devise_parameter_sanitizer.permit(:sign_up) do |teacher|
			teacher.permit(:nombre,:email,:rut,:apellido_paterno, :apellido_materno, :password, :password_confirmation)
		end
	end
	def configure_devise_params
		devise_parameter_sanitizer.permit(:sign_up) do |estudiante|
			estudiante.permit(:nombre,:email,:rut,:apellido_paterno, :apellido_materno,:edad, :password, :password_confirmation)
		end
	end
end
