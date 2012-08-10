require 'test_helper'

class PostsControllerTest < ActionController::TestCase
  setup do
    @post = posts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:posts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post" do
    assert_difference('Post.count') do
      post :create, :post => { :blurb => @post.blurb, :description => @post.description, :name => @post.name, :pic2_content_type => @post.pic2_content_type, :pic2_file_name => @post.pic2_file_name, :pic2_file_size => @post.pic2_file_size, :pic3_content_type => @post.pic3_content_type, :pic3_file_name => @post.pic3_file_name, :pic3_file_size => @post.pic3_file_size, :pic4_content_type => @post.pic4_content_type, :pic4_file_name => @post.pic4_file_name, :pic4_file_size => @post.pic4_file_size, :pic_content_type => @post.pic_content_type, :pic_file_name => @post.pic_file_name, :pic_file_size => @post.pic_file_size, :post_cat_id => @post.post_cat_id }
    end

    assert_redirected_to post_path(assigns(:post))
  end

  test "should show post" do
    get :show, :id => @post
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @post
    assert_response :success
  end

  test "should update post" do
    put :update, :id => @post, :post => { :blurb => @post.blurb, :description => @post.description, :name => @post.name, :pic2_content_type => @post.pic2_content_type, :pic2_file_name => @post.pic2_file_name, :pic2_file_size => @post.pic2_file_size, :pic3_content_type => @post.pic3_content_type, :pic3_file_name => @post.pic3_file_name, :pic3_file_size => @post.pic3_file_size, :pic4_content_type => @post.pic4_content_type, :pic4_file_name => @post.pic4_file_name, :pic4_file_size => @post.pic4_file_size, :pic_content_type => @post.pic_content_type, :pic_file_name => @post.pic_file_name, :pic_file_size => @post.pic_file_size, :post_cat_id => @post.post_cat_id }
    assert_redirected_to post_path(assigns(:post))
  end

  test "should destroy post" do
    assert_difference('Post.count', -1) do
      delete :destroy, :id => @post
    end

    assert_redirected_to posts_path
  end
end
