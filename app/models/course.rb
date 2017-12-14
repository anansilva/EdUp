class Course < ApplicationRecord
  has_many :students, through: :course_students
  belongs_to :publisher

  mount_uploader :video, VideoUploader, only: [:new, :create]
end
