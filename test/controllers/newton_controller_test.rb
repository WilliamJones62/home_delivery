require 'test_helper'

class NewtonControllerTest < ActionDispatch::IntegrationTest
  test "should get main" do
    get newton_main_url
    assert_response :success
  end

  test "should get partners" do
    get newton_partners_url
    assert_response :success
  end

end
