class AddUserIdToBooks < ActiveRecord::Migration[6.1]
  def change
    add_column :books, :name, :integer
  end
end
