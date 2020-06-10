require 'test_helper'

class SwampscottControllerTest < ActionDispatch::IntegrationTest
  test "should get main" do
    get swampscott_main_url
    assert_response :success
  end

  test "should get partners" do
    get swampscott_partners_url
    assert_response :success
  end

end
