require 'test_helper'

class OaklandControllerTest < ActionDispatch::IntegrationTest
  test "should get main" do
    get oakland_main_url
    assert_response :success
  end

  test "should get partners" do
    get oakland_partners_url
    assert_response :success
  end

end
