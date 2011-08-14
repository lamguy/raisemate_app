class CreateUsers < ActiveRecord::Migration
  def self.up
    create_table :users do |t|
      t.string :user_login, :limit => 50
      t.string :user_password, :limit => 64
      t.string :user_name, :limit => 250
      t.string :user_email, :limit => 100
      t.string :user_key
      t.integer :user_plan
      t.timestamp :user_registered

      t.timestamps
    end
  end

  def self.down
    drop_table :users
  end
end
