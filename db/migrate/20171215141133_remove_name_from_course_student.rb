class RemoveNameFromCourseStudent < ActiveRecord::Migration[5.1]
  def change
    remove_column :course_students, :name, :string
  end
end
