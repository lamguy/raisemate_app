class FixColumns < ActiveRecord::Migration
  def self.up
    rename_column :users, :user_password, :user_password_hash
    remove_column :users, :user_registered
  end

  def self.down
  end
end
