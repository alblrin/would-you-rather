class AddUsernameToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :username, :string, null: false, default: ""
  end
  add_index :users, :username, unique: true
end
