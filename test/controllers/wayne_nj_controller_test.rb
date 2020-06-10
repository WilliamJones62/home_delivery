require 'test_helper'

class WayneNjControllerTest < ActionDispatch::IntegrationTest
  test "should get main" do
    get wayne_nj_main_url
    assert_response :success
  end

  test "should get partners" do
    get wayne_nj_partners_url
    assert_response :success
  end

end
