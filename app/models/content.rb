class Content < ApplicationRecord
  has_many :courses, through: :course_contents

  mount_uploader :video, VideoUploader, only: [:new, :create]
end
