require 'test_helper'

class BeverlyControllerTest < ActionDispatch::IntegrationTest
  test "should get main" do
    get beverly_main_url
    assert_response :success
  end

  test "should get partners" do
    get beverly_partners_url
    assert_response :success
  end

end
