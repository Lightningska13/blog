class PostCat < ActiveRecord::Base
  has_many :posts
  attr_accessible :cat_name, :catpic_content_type, :catpic_file_name, :catpic_file_size, :description, :featured
  validates_presence_of :cat_name
end
