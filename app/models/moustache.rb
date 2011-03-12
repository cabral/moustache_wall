# encoding: UTF-8
class Moustache < ActiveRecord::Base

  validates_presence_of :name

  def image= image_file
    File.open("#{Rails.root}/public/moustaches/#{name}.jpg","wb") do |f| 
      f << image_file.read
    end
    self.img_path = "moustaches/#{name}.jpg"
  end

end
