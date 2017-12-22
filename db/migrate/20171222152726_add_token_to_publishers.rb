class AddTokenToPublishers < ActiveRecord::Migration[5.1]
  def change
    add_column :publishers, :authentication_token, :string, limit: 30
    add_index :publishers, :authentication_token, unique: true
  end
end
