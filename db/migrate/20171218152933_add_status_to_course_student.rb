class AddStatusToCourseStudent < ActiveRecord::Migration[5.1]
  def change
    add_column :course_students, :accessed, :boolean, :default => false
  end
end
