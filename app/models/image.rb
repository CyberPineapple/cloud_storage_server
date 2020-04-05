class Image < ApplicationRecord
  mount_base64_uploader :image_data, ImageUploader
end
