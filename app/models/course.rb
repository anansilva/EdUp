class Course < ApplicationRecord
  before_create :set_slug

  has_many :course_students
  has_many :students, through: :course_students
  has_many :course_contents
  has_many :contents, through: :course_contents
  has_one :publisher

  def to_param
    slug
  end

  private

  def set_slug
    loop do
      self.slug = SecureRandom.uuid
      break unless Course.where(slug: slug).exists?
    end
  end

end
