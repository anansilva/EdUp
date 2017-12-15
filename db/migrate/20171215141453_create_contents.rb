class CreateContents < ActiveRecord::Migration[5.1]
  def change
    create_table :contents do |t|
      t.string :name
      t.string :description
      t.string :video
      t.string :video_link
      t.references :course, foreign_key: true

      t.timestamps
    end
  end
end
