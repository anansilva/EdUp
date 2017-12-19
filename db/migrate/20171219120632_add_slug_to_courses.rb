class AddSlugToCourses < ActiveRecord::Migration[5.1]
  def change
    add_column :courses, :slug, :string, null: false
    add_index :courses, :slug, unique: true
  end
end
