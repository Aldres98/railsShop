class Product < ApplicationRecord
  has_attached_file :product_image, styles: { thumb: ["200x200#", :jpg] }
  validates_attachment :product_image, content_type: { content_type: ["image/jpg", "image/jpeg", "image/png", "image/gif"] }

end
