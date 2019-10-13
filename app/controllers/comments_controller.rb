class CommentsController < ApplicationController
  before_action :authenticate_user!
  # POST /comments
  # POST /comments.json
  def create
    @course = Course.find(params[:course_id])
    @comment = @course.comments.new(params.require(:comment).permit(:comment, :id, :user_id))
    if @comment.save
      @course.save
    end
    redirect_to @course
  end

  # GET /comments/1/edit
  def edit
    @course = Course.find(params[:course_id])
    @comment = @course.comments.find(params[:id])
    redirect_to @course
  end

  # PATCH/PUT /comments/1
  # PATCH/PUT /comments/1.json
  def update
    @course = Course.find(params[:course_id])
    @comment = @course.comments.find(params[:id])
    redirect_to @course
  end

  # DELETE /comments/1
  # DELETE /comments/1.json
  def destroy
    @course = Course.find(params[:course_id])
    @comment = @course.comments.find(params[:id])
    @comment.destroy
    respond_to do |format|
      format.html { redirect_to comments_url, notice: 'Comment was successfully destroyed.' }
      format.json { head :no_content }
    end
    redirect_to @course
  end
end