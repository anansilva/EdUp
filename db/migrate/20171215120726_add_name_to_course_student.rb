class AddNameToCourseStudent < ActiveRecord::Migration[5.1]
  def change
    add_column :course_students, :name, :string
  end
end
