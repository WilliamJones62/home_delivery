require 'test_helper'

class RockvilleControllerTest < ActionDispatch::IntegrationTest
  test "should get main" do
    get rockville_main_url
    assert_response :success
  end

  test "should get partners" do
    get rockville_partners_url
    assert_response :success
  end

end
