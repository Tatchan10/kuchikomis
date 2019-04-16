class Product < ApplicationRecord
  mount_uploader :image_product, ImagesUploader
  
  has_many :reviews
end
