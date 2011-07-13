class CreateProfiles < ActiveRecord::Migration
  def self.up
    create_table :profiles do |t|
      t.string :avatar_id
      t.string :first_name
      t.string :last_name
      t.string :hometown
      t.string :locale
      t.string :timezone
      t.string :bio
      t.string :web
      t.string :facebook
      t.string :twitter

      t.timestamps
    end
  end

  def self.down
    drop_table :profiles
  end
end
