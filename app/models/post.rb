class Post < ActiveRecord::Base
  belongs_to :post_cat
  has_attached_file :pic, :styles => { :tiny => "25x25#", :small => "72x72#", :medium => "150x150#", :large => "600"}
  has_attached_file :pic2, :styles => { :tiny => "25x25#", :small => "72x72#", :medium => "150x150#", :large => "600"}
  has_attached_file :pic3, :styles => { :tiny => "25x25#", :small => "72x72#", :medium => "150x150#", :large => "600"}
  has_attached_file :pic4, :styles => { :tiny => "25x25#", :small => "72x72#", :medium => "150x150#", :large => "600"}
  validates_presence_of :name
  attr_accessible :blurb, :description, :name, :pic2_content_type, :pic2_file_name, :pic2_file_size, :pic3_content_type, :pic3_file_name, :pic3_file_size, :pic4_content_type, :pic4_file_name, :pic4_file_size, :pic_content_type, :pic_file_name, :pic_file_size, :post_cat_id
end
