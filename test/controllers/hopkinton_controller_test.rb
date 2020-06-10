require 'test_helper'

class HopkintonControllerTest < ActionDispatch::IntegrationTest
  test "should get main" do
    get hopkinton_main_url
    assert_response :success
  end

  test "should get partners" do
    get hopkinton_partners_url
    assert_response :success
  end

end
