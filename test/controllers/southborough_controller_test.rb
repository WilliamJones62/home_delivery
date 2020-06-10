require 'test_helper'

class SouthboroughControllerTest < ActionDispatch::IntegrationTest
  test "should get main" do
    get southborough_main_url
    assert_response :success
  end

  test "should get partners" do
    get southborough_partners_url
    assert_response :success
  end

end
