class AddPsToUser < ActiveRecord::Migration
  def self.up
    add_column :users, :user_password_salt, :string, :limit => 64
  end

  def self.down
    remove_column :users, :user_password_salt
  end
end
