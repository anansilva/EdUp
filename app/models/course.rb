class Course < ApplicationRecord
  has_many :students, through: :course_students
  belongs_to :publisher
end
