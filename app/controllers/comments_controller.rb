class CommentsController < ApplicationController
  def new
    @cheerup = Cheerup.find(params[:cheerup_id])
    @comment = Comment.new
  end
  def create
    @cheerup = Cheerup.find(params[:cheerup_id])
    @comment = @cheerup.comments.create(comment_params)
    redirect_to cheerup_path(@cheerup)
  end
  private
  def comment_params
    params.require(:comment).permit(:body)
  end
end
