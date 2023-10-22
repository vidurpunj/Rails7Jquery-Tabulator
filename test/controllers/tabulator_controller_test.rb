require "test_helper"

class TabulatorControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get tabulator_index_url
    assert_response :success
  end
end
