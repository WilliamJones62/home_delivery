require 'test_helper'

class MontvilleControllerTest < ActionDispatch::IntegrationTest
  test "should get main" do
    get montville_main_url
    assert_response :success
  end

  test "should get partners" do
    get montville_partners_url
    assert_response :success
  end

end
