class Student < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  acts_as_token_authenticatable

  devise :invitable, :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :course_students
  has_many :courses, through: :course_students

  # acts_as_token_authenticatable

  def invitation_email
    invitation_instructions
  end

end
