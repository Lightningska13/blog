class DashController < ApplicationController
  def index
    @page_title= "Sleuth 5"
    @posts = Post.all
    @postCategories = PostCat.all
  end
end
