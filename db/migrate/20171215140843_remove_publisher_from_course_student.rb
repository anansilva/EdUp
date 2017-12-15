class RemovePublisherFromCourseStudent < ActiveRecord::Migration[5.1]
  def change
    remove_column :course_students, :publisher_id
  end
end
