class CheerupsController < ApplicationController
  def index
    @cheerups = Cheerup.all
  end

  def show
    @cheerup = Cheerup.find(params[:id])
  end

  def edit
    @cheerup = Cheerup.find(params[:id])
  end

  def new
    @cheerup = Cheerup.new
  end

  def create
    @cheerup = Cheerup.new(cheerup_params.merge(user: current_user))
    if @cheerup.save
      redirect_to @cheerup
    else
      render 'new'
    end
  end

  def update
    @cheerup = Cheerup.find(params[:id])
    if @cheerup.update(cheerup_params.merge(user: current_user))
      redirect_to cheerup_path(@cheerup)
    else
      render 'new'
  end
end

  def destroy
    @cheerup = Cheerup.find(params[:id])
    @cheerup.destroy
    flash[:alert] = 'Cheerup Deleted!'
    redirect_to cheerups_path
  end

  def score_up
    @cheerup = Cheerup.find(params[:id])
    @cheerup.upvotes
    @cheerup.save
    redirect_to cheerup_path(@cheerup)
  end

  private
  def cheerup_params
    params.require(:cheerup).permit(:title, :body)
  end
end
