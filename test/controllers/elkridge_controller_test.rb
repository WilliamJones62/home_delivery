require 'test_helper'

class ElkridgeControllerTest < ActionDispatch::IntegrationTest
  test "should get main" do
    get elkridge_main_url
    assert_response :success
  end

  test "should get partners" do
    get elkridge_partners_url
    assert_response :success
  end

end
