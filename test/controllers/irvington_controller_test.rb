require 'test_helper'

class IrvingtonControllerTest < ActionDispatch::IntegrationTest
  test "should get main" do
    get irvington_main_url
    assert_response :success
  end

  test "should get partners" do
    get irvington_partners_url
    assert_response :success
  end

end
