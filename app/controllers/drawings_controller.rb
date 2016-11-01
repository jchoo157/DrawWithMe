class DrawingsController < ApplicationController

  def index
    @drawings = current_user.drawings
  end

  def new
  end

  def create
    layout :false

    @drawing = current_user.drawings.new(title: params[:title], image_url: params[:image])

    if request.xhr?
      if @drawing.save
        redirect_to drawing_path(@drawing)
      else
        render 'new'
      end
    else
      redirect_to root_path
    end
  end

  def show
    @drawing = Drawing.find(params[:id])
  end

  def edit
    @drawing = Drawing.find(params[:id])
  end

  def update
    @drawing = Drawing.find(params[:id])
  end

  def destroy
    @drawing = Drawing.find(params[:id])
    @drawing.destroy
    redirect_to root_path
  end

  private

  def drawing_params
    params.require(:drawing).permit(:title, :image_url)
  end
end
