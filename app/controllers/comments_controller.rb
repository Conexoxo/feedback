class CommentsController < ApplicationController
  before_action :set_course

  # POST /comments
  # POST /comments.json
  def create
    @comment = @course.comments.new(params.require(:comment).permit(:comment, :id))

    if @comment.save
			redirect_to @course
    end
    
    redirect_to @course
  end

  # GET /comments/1/edit
  def edit
    @comment = @course.comments.find(params[:id])
    redirect_to @course
  end

  # PATCH/PUT /comments/1
  # PATCH/PUT /comments/1.json
  def update
    @comment = @course.comments.find(params[:id])
    redirect_to @course
  end

  # DELETE /comments/1
  # DELETE /comments/1.json
  def destroy
    @comment = @course.comments.find(params[:id])
    @comment.destroy
    respond_to do |format|
      format.html { redirect_to comments_url, notice: 'Comment was successfully destroyed.' }
      format.json { head :no_content }
    end
    redirect_to @course
  end

  private

  def set_course
    @course = Course.find(params[:course_id])
  end
end
