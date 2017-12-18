class AddContentIdToCourseContent < ActiveRecord::Migration[5.1]
  def change
    add_reference :course_contents, :content, foreign_key: true
  end
end
