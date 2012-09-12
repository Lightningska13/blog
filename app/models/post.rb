class Post < ActiveRecord::Base
  belongs_to :post_cat
  has_attached_file :pic, :styles => { :tiny => "25x25#", :small => "72x72#", :medium => "150x150#", :large => "600"}
  has_attached_file :pic2, :styles => { :tiny => "25x25#", :small => "72x72#", :medium => "150x150#", :large => "600"}
  has_attached_file :pic3, :styles => { :tiny => "25x25#", :small => "72x72#", :medium => "150x150#", :large => "600"}
  has_attached_file :pic4, :styles => { :tiny => "25x25#", :small => "72x72#", :medium => "150x150#", :large => "600"}
  validates_presence_of :name
  attr_accessible :blurb, :description, :name, :pic, :pic2, :pic3, :pic4, :post_cat_id
end
