class AddPublisherToCourseStudents < ActiveRecord::Migration[5.1]
  def change
    add_reference :course_students, :publisher, foreign_key: true
  end
end
