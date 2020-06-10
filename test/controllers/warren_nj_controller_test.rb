require 'test_helper'

class WarrenNjControllerTest < ActionDispatch::IntegrationTest
  test "should get main" do
    get warren_nj_main_url
    assert_response :success
  end

  test "should get partners" do
    get warren_nj_partners_url
    assert_response :success
  end

end
