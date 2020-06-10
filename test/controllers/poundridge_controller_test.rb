require 'test_helper'

class PoundridgeControllerTest < ActionDispatch::IntegrationTest
  test "should get main" do
    get poundridge_main_url
    assert_response :success
  end

  test "should get partners" do
    get poundridge_partners_url
    assert_response :success
  end

end
