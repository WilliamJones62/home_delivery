require 'test_helper'

class HarrisonControllerTest < ActionDispatch::IntegrationTest
  test "should get main" do
    get harrison_main_url
    assert_response :success
  end

  test "should get partners" do
    get harrison_partners_url
    assert_response :success
  end

end
