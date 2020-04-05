class ShowImageRepresenter

  def self.call(image)
    { 
      id: image.id,
      small_image_url: image.image_data.small.url,
      original_image_url: image.image_data.url
    }
  end
end