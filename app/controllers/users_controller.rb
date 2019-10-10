class UsersController < ApplicationController
	helper_method :is_student?

	def index
		@courses = Course.all.sort
		@users = User.all.sort
		@users_count = User.all.count
		if is_student? 
			render "student"
		else
			render "teacher"
		end
	end

  def show
  end

  def update
	end
	
end