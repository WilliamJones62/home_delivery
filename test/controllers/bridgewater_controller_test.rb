require 'test_helper'

class BridgewaterControllerTest < ActionDispatch::IntegrationTest
  test "should get main" do
    get bridgewater_main_url
    assert_response :success
  end

  test "should get partners" do
    get bridgewater_partners_url
    assert_response :success
  end

end
