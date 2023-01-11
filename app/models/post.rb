class Post < ApplicationRecord
    belongs_to :user
    has_many   :comments, dependent: :destroy
    mount_uploader :post_image, ImageUploader
end
