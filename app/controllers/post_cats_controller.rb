class PostCatsController < ApplicationController
  skip_filter :require_user
  before_filter :require_user, :except => [:show]
  # GET /post_cats
  # GET /post_cats.json
  def index
    @post_cats = PostCat.all
    @page_title = "Post Categories"

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @post_cats }
    end
  end

  # GET /post_cats/1
  # GET /post_cats/1.json
  def show
    @post_cat = PostCat.find(params[:id])
    @posts = @post_cat.posts
    @page_title = "Recent Posts"

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @post_cat }
    end
  end

  # GET /post_cats/new
  # GET /post_cats/new.json
  def new
    @post_cat = PostCat.new
    @page_title = "New Post Category"

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @post_cat }
    end
  end

  # GET /post_cats/1/edit
  def edit
    @post_cat = PostCat.find(params[:id])
    @page_title = "Edit Post Category"
  end

  # POST /post_cats
  # POST /post_cats.json
  def create
    @post_cat = PostCat.new(params[:post_cat])

    respond_to do |format|
      if @post_cat.save
        format.html { redirect_to @post_cat, :notice => 'Post cat was successfully created.' }
        format.json { render :json => @post_cat, :status => :created, :location => @post_cat }
      else
        format.html { render :action => "new" }
        format.json { render :json => @post_cat.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /post_cats/1
  # PUT /post_cats/1.json
  def update
    @post_cat = PostCat.find(params[:id])
    @page_title = "Update Post Category"

    respond_to do |format|
      if @post_cat.update_attributes(params[:post_cat])
        format.html { redirect_to @post_cat, :notice => 'Post cat was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @post_cat.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /post_cats/1
  # DELETE /post_cats/1.json
  def destroy
    @post_cat = PostCat.find(params[:id])
    @post_cat.destroy

    respond_to do |format|
      format.html { redirect_to post_cats_url }
      format.json { head :no_content }
    end
  end
end
