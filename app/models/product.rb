class Product < ApplicationRecord
  mount_uploaders :images, ImagesUploader
  serialize :images, JSON # If you use SQLite, add this line.
end
