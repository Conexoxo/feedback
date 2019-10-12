class CommentsController < ApplicationController
  before_action :set_comment, only: [:show, :edit, :update, :destroy]
  before_action :set_course

  # GET /comments/new
  def new
    @comment = Comment.new
  end

  # GET /comments/1/edit
  def edit
    @comment = @course.comments.find(params[:id])
  end

  # POST /comments
  # POST /comments.json
  def create
    @comment = @course.comments.new(params.require(:body).permit(:body, :id))
    if @comment.save
			redirect_to @course
		end
  end

  # PATCH/PUT /comments/1
  # PATCH/PUT /comments/1.json
  def update
    @comment = @course.comments.find(params[:id])
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
  end

  private
    def set_course
      @course = Course.find(params[:course_id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def comment_params
      params.require(:comment).permit(:title, :body)
    end
end
