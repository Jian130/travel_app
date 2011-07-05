class CreatePosts < ActiveRecord::Migration
  def self.up
    create_table :posts do |t|
      t.string :photo
      t.string :message
      t.integer :user_id
      t.integer :place_id
      t.datetime :time

      t.timestamps
    end
  end

  def self.down
    drop_table :posts
  end
end
