class Course < ApplicationRecord
  has_many :students, through: :course_students
end
