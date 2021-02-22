require 'test_helper'

class CorrectLogTest < ActionDispatch::IntegrationTest
 include Devise::Test::IntegrationHelpers
  def setup
   @user = users(:one)
   sign_in @user
  end

  test "redirect if not logged in" do
    sign_out @user
    get posts_url
    assert_redirected_to new_user_session_path
  end

  test " should go posts if logged in" do
    get posts_url
    assert_response :success
  end

  test "new user can registrate" do
    sign_out @user
    get new_user_registration_path
    assert_response :success
  end
  
end
