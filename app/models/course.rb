class Course < ApplicationRecord
  has_many :students, through: :course_students
  has_one :publisher
end
