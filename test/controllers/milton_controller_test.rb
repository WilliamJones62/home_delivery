require 'test_helper'

class MiltonControllerTest < ActionDispatch::IntegrationTest
  test "should get main" do
    get milton_main_url
    assert_response :success
  end

  test "should get partners" do
    get milton_partners_url
    assert_response :success
  end

end
