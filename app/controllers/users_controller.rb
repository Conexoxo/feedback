class UsersController < ApplicationController
  before_action :authenticate_user!
	helper_method :is_student?
	before_action :set_user, only: [:show, :edit, :update]

	def index
		@courses = Course.all.sort
    @teachers = User.all.where(role:"Profesor").sort
    @users = User.all.where(role:"Alumno").sort
		if is_student? 
			render "student_index"
		else
			render "teacher_index"
		end
	end

  def show
    x=0
    suma=0
		@teacher_courses = []
    @courses_count = Course.all.count
    @inscritos_count = Course.all.count
    @teacher_name = User.find(params[:id]).name
    @teacher_lastname = User.find(params[:id]).last_name
    @teacher_email = User.find(params[:id]).email
    @teacher_courses_array = User.find(params[:id]).courses
    @teacher_courses_array.each do |i| 
      @teacher_courses<<[i, Course.find(i).nrc, Course.find(i).name]
    end
    @teacher_evaluations = User.find(params[:id]).rating

    @teacher_evaluations.each do |evaluation, user|
      suma += evaluation
      x += 1
    end
    @evaluation_avg = suma/x if x!=0

		if request.fullpath==student_path(current_user.id)
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