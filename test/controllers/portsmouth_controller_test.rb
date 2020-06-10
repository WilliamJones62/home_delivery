require 'test_helper'

class PortsmouthControllerTest < ActionDispatch::IntegrationTest
  test "should get main" do
    get portsmouth_main_url
    assert_response :success
  end

  test "should get partners" do
    get portsmouth_partners_url
    assert_response :success
  end

end
