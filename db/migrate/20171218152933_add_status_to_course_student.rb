class AddStatusToCourseStudent < ActiveRecord::Migration[5.1]
  def change
    add_column :course_students, :status, :boolean, :default => false
  end
end
