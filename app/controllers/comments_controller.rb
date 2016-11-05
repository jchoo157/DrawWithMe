class CommentsController < ApplicationController
  def new
    @comment = Comment.new
  end

  def create
    @drawing = Drawing.find(params[:drawing_id])
    @comment = @drawing.comments.new(comment_params)
    @comment.user_id = current_user.id

    if @comment.save
      redirect_to root_path
    else
      render 'new'
    end
  end

  def show
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def comment_params
    params.require(:comment).permit(:content)
  end
end
