class AddUserDetilsToUsers < ActiveRecord::Migration
  def self.up
    add_column :users, :username, :string
    add_column :users, :private, :boolean
    add_column :users, :score, :integer
    add_column :users, :rank, :integer
    add_column :users, :disable, :boolean
    add_column :users, :countries_count, :integer
    add_column :users, :cities_count, :integer
    add_column :users, :photos_count, :integer
    add_column :users, :followers_count, :integer
    add_column :users, :followings_count, :integer
    add_column :users, :last_activity, :string
  end

  def self.down
    remove_column :users, :last_activity
    remove_column :users, :followings_count
    remove_column :users, :followers_count
    remove_column :users, :photos_count
    remove_column :users, :cities_count
    remove_column :users, :countries_count
    remove_column :users, :disable
    remove_column :users, :rank
    remove_column :users, :score
    remove_column :users, :private
    remove_column :users, :username
  end
end
