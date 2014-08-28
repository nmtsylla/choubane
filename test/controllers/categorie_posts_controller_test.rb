require 'test_helper'

class CategoriePostsControllerTest < ActionController::TestCase
  setup do
    @categorie_post = categorie_posts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:categorie_posts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create categorie_post" do
    assert_difference('CategoriePost.count') do
      post :create, categorie_post: { description: @categorie_post.description, name: @categorie_post.name, user_id: @categorie_post.user_id }
    end

    assert_redirected_to categorie_post_path(assigns(:categorie_post))
  end

  test "should show categorie_post" do
    get :show, id: @categorie_post
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @categorie_post
    assert_response :success
  end

  test "should update categorie_post" do
    patch :update, id: @categorie_post, categorie_post: { description: @categorie_post.description, name: @categorie_post.name, user_id: @categorie_post.user_id }
    assert_redirected_to categorie_post_path(assigns(:categorie_post))
  end

  test "should destroy categorie_post" do
    assert_difference('CategoriePost.count', -1) do
      delete :destroy, id: @categorie_post
    end

    assert_redirected_to categorie_posts_path
  end
end
