class ImagesController < ApplicationController

  def show
    collection = Image.all
    images =  ImagesRepresenter.call(collection)
    render json: images
  end

  def destroy
    params[:files].each do |file|
      Image.find(file).destroy!
    end
  end

  def create
    params[:files].each do |file|
      new_image = Image.new
      new_image.image_data = file
      new_image.save!
    end
  end

end
