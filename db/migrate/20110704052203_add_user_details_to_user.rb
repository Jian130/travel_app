class AddUserDetailsToUser < ActiveRecord::Migration
  def self.up
    add_column :users, :name, :string
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :description, :string
    add_column :users, :avatar, :string
    add_column :users, :hometown, :string
  end

  def self.down
    remove_column :users, :hometown
    remove_column :users, :avatar
    remove_column :users, :description
    remove_column :users, :last_name
    remove_column :users, :first_name
    remove_column :users, :name
  end
end
