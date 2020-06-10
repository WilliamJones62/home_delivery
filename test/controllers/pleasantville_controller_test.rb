require 'test_helper'

class PleasantvilleControllerTest < ActionDispatch::IntegrationTest
  test "should get main" do
    get pleasantville_main_url
    assert_response :success
  end

  test "should get partners" do
    get pleasantville_partners_url
    assert_response :success
  end

end
