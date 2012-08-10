require 'test_helper'

class PostCatsControllerTest < ActionController::TestCase
  setup do
    @post_cat = post_cats(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:post_cats)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post_cat" do
    assert_difference('PostCat.count') do
      post :create, :post_cat => { :cat_name => @post_cat.cat_name, :catpic_content_type => @post_cat.catpic_content_type, :catpic_file_name => @post_cat.catpic_file_name, :catpic_file_size => @post_cat.catpic_file_size, :description => @post_cat.description, :featured => @post_cat.featured }
    end

    assert_redirected_to post_cat_path(assigns(:post_cat))
  end

  test "should show post_cat" do
    get :show, :id => @post_cat
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @post_cat
    assert_response :success
  end

  test "should update post_cat" do
    put :update, :id => @post_cat, :post_cat => { :cat_name => @post_cat.cat_name, :catpic_content_type => @post_cat.catpic_content_type, :catpic_file_name => @post_cat.catpic_file_name, :catpic_file_size => @post_cat.catpic_file_size, :description => @post_cat.description, :featured => @post_cat.featured }
    assert_redirected_to post_cat_path(assigns(:post_cat))
  end

  test "should destroy post_cat" do
    assert_difference('PostCat.count', -1) do
      delete :destroy, :id => @post_cat
    end

    assert_redirected_to post_cats_path
  end
end
