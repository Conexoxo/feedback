class TeacherCommentsController < ApplicationController
  before_action :authenticate_user!
  # POST /comments
  # POST /comments.json
  def create
    @user = User.find(params[:user_id])
    @teacher_comment = @user.teacher_comments.new(params.require(:teacher_comment).permit(:teacher_comment, :id, :user_id))
    if @teacher_comment.save
      @user.save
    end
    redirect_to @user 
  end
end