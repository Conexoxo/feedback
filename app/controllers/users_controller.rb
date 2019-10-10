class UsersController < ApplicationController
	helper_method :is_student?
	before_action :set_user, only: [:show, :edit, :update]

	def index
		@courses = Course.all.sort
		@users = User.all.sort
		@users_count = User.all.count
		if is_student? 
			render "student_index"
		else
			render "teacher_index"
		end
	end

	def show
		@teacher_courses = Course.all.sort
		@courses_count = Course.all.count
		if is_student? 
			render "student_show"
		else
			render "teacher_show"
		end
  end

  def update
	end
	
	private

	def set_user
		@user = User.find(params[:id])
	end
end