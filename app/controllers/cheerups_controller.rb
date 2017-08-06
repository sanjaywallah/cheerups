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
    @cheerup = Cheerup.create!(cheerup_params)
    redirect_to cheerup_path(@cheerup)
  end

  def update
    @cheerup = Cheerup.find(params[:id])
    @cheerup.update(cheerup_params)
    redirect_to cheerup_path(@cheerup)
  end
  
  def destroy
    @cheerup = Cheerup.find(params[:id])
    @cheerup.destroy
    redirect_to cheerups_path
  end

  private
  def cheerup_params
    params.require(:cheerup).permit(:title, :body)
  end
end
