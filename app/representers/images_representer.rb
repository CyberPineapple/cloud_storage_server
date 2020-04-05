class ImagesRepresenter

  def self.call(collection)
    collection.map do |image|
      ShowImageRepresenter.call(image)
    end
  end
end