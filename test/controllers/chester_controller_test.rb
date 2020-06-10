require 'test_helper'

class ChesterControllerTest < ActionDispatch::IntegrationTest
  test "should get main" do
    get chester_main_url
    assert_response :success
  end

  test "should get partners" do
    get chester_partners_url
    assert_response :success
  end

end
