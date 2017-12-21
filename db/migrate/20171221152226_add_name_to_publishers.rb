class AddNameToPublishers < ActiveRecord::Migration[5.1]
  def change
    add_column :publishers, :name, :string
  end
end
