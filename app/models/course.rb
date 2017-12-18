class Course < ApplicationRecord
  has_many :course_students
  has_many :students, through: :course_students
  has_many :contents, through: :course_contents
  has_one :publisher
end
