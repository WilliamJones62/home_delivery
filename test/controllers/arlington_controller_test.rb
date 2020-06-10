require 'test_helper'

class ArlingtonControllerTest < ActionDispatch::IntegrationTest
  test "should get main" do
    get arlington_main_url
    assert_response :success
  end

  test "should get partners" do
    get arlington_partners_url
    assert_response :success
  end

end
