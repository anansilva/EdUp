class AddTokenToStudents < ActiveRecord::Migration[5.1]
  def change
    add_column :students, :authentication_token, :string, limit: 30
    add_index :students, :authentication_token, unique: true
  end
end
