class DashController < ApplicationController
  def index
    @page_title= "Home"
    @posts = Post.all
    @postCategories = PostCat.all
  end
end
