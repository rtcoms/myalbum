class AddUserIdToAlbum < ActiveRecord::Migration
  def self.up
    add_column :albums, :user_id, :string
  end

  def self.down
    remove_column :albums, :user_id
  end
end
