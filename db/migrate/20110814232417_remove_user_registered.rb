class RemoveUserRegistered < ActiveRecord::Migration
  def self.up
    remove_column :users, :user_registered
  end

  def self.down
  end
end
