class ImagesController < ApplicationController
  
  def index
  	@images = Image.all
  end


  def new
  end


  def create
  #	render plain: params[:image].inspect
  	@image = Image.new image_params
  	@image.save

	redirect_to @image
  end

  def show

  	@image = Image.find params[:id]
  
  end


 private

  def image_params
  	params.require(:image).permit(:nombre)
  end
end
