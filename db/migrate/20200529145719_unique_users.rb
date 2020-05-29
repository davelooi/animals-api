class UniqueUsers < ActiveRecord::Migration[6.0]
  def change
    add_index :users, :uuid, unique: true
    add_index :users, :handle, unique: true
    add_index :users, :email, unique: true
  end
end
