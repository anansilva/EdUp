class Content < ApplicationRecord
  has_many :courses

   mount_uploader :video, VideoUploader, only: [:new, :create]
end
