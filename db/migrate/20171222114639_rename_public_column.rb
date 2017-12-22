class RenamePublicColumn < ActiveRecord::Migration[5.1]
  def change
    rename_column :courses, :public, :public_status
  end
end
