class WelcomeController < ApplicationController
  def index
  end

  def is_student?
    current_user.role == 'Alumno' if user_signed_in?
  end

  def set_id
    current_user.id
  end
end
