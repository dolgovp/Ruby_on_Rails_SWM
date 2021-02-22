require 'test_helper'

class PostsControllerTest < ActionDispatch::IntegrationTest
  include Devise::Test::IntegrationHelpers

  setup do
    @post = posts(:one)
    @user = users(:one)
    sign_in @user
  end

  test "should get index" do
    get posts_url
    assert_response :success
  end

  test "should create post" do
    assert_difference('Post.count') do
      post posts_url, params: { post: { comment: @post.comment, name: @post.name, task: @post.task, user_id: @post.user_id } }
    end
    assert_redirected_to post_url(Post.last)
  end

  test "should show post" do
    get "/en/posts/980190962"
    assert_response :success
  end

  test "should get edit user" do
    get "/en/users/edit"
    assert_response :success
  end

  test "should destroy post" do
    assert_difference('Post.count', -1) do
      delete "/en/posts/980190962"
    end
    assert_redirected_to posts_url
  end

  test "should change locale" do
    get root_path(locale: :ru)
    assert_equal I18n.t("entered"),  "Вы вошли как "
  end

  test "should have default locale: :en" do
    assert_equal I18n.t("entered"), "You entered as "
  end

end
