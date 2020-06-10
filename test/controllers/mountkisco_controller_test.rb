require 'test_helper'

class MountkiscoControllerTest < ActionDispatch::IntegrationTest
  test "should get main" do
    get mountkisco_main_url
    assert_response :success
  end

  test "should get partners" do
    get mountkisco_partners_url
    assert_response :success
  end

end
