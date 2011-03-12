class CreateMoustaches < ActiveRecord::Migration
  def self.up
    create_table :moustaches do |t|
      t.string :name, :null => false
      t.timestamps
    end
  end

  def self.down
    drop_table :moustaches
  end
end
