class AddImgPathToMoustaches < ActiveRecord::Migration
  def self.up
    add_column :moustaches, :img_path, :text
  end

  def self.down
    remove_column :moustaches, :img_path
  end
end
