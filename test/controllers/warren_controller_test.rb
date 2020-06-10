require 'test_helper'

class WarrenControllerTest < ActionDispatch::IntegrationTest
  test "should get main" do
    get warren_main_url
    assert_response :success
  end

  test "should get partners" do
    get warren_partners_url
    assert_response :success
  end

end
