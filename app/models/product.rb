class Product < ApplicationRecord
  mount_uploader :image_product_sum, ImagesUploader
  mount_uploader :image_product_hed, ImagesUploader
  
  mount_uploader :evaluation, ImagesUploader
  
  has_many :reviews
end
