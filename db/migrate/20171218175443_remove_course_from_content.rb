class RemoveCourseFromContent < ActiveRecord::Migration[5.1]
  def change
    remove_reference :contents, :course, foreign_key: true
  end
end
