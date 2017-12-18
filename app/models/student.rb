class Student < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :invitable, :confirmable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :course_students
  has_many :courses, through: :course_students
end
