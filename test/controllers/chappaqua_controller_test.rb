require 'test_helper'

class ChappaquaControllerTest < ActionDispatch::IntegrationTest
  test "should get main" do
    get chappaqua_main_url
    assert_response :success
  end

  test "should get partners" do
    get chappaqua_partners_url
    assert_response :success
  end

end
