class CommentsController < ApplicationController
  def new
    @cheerup = Cheerup.find(params[:cheerup_id])
    @comment = Comment.new
  end
  def create
    @cheerup = Cheerup.find(params[:cheerup_id])
    @comment = @cheerup.comments.create(comment_params.merge(user: current_user))
    redirect_to cheerup_path(@cheerup)
  end
  def edit
    @cheerup = Cheerup.find(params[:cheerup_id])
    @comment = Comment.find(params[:id])
  end
  def update
    @cheerup = Cheerup.find(params[:cheerup_id])
    @comment = Comment.find(params[:id])
    @comment.update(comment_params.merge(user: current_user))
    redirect_to cheerup_path(@cheerup)
  end
  def destroy
    @cheerup = Cheerup.find(params[:cheerup_id])
    @comment = Comment.find(params[:id])
    @comment.destroy
    redirect_to cheerup_path(@cheerup)
  end
  private
  def comment_params
    params.require(:comment).permit(:body)
  end
end
