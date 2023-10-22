require "test_helper"

class HotwireControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get hotwire_index_url
    assert_response :success
  end
end
