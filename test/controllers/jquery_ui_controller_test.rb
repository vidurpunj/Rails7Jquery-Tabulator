require "test_helper"

class JqueryUiControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get jquery_ui_index_url
    assert_response :success
  end
end
