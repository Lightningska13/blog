class DashController < ApplicationController
  def index
    @page_title= "Home"
    @posts = Post.order("created_at desc")
    @postCategories = PostCat.all
  end
end
