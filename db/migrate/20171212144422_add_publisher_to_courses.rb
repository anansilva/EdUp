class AddPublisherToCourses < ActiveRecord::Migration[5.1]
  def change
    add_reference :courses, :publisher, foreign_key: true
  end
end