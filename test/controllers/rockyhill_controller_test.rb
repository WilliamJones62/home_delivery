require 'test_helper'

class RockyhillControllerTest < ActionDispatch::IntegrationTest
  test "should get main" do
    get rockyhill_main_url
    assert_response :success
  end

  test "should get partners" do
    get rockyhill_partners_url
    assert_response :success
  end

end
