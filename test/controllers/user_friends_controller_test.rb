require "test_helper"

class UserFriendsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get user_friends_index_url
    assert_response :success
  end
end
