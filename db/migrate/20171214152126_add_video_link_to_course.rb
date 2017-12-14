class AddVideoLinkToCourse < ActiveRecord::Migration[5.1]
  def change
    add_column :courses, :video_link, :string
  end
end
