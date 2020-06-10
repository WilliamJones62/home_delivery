require 'test_helper'

class EllicotcityControllerTest < ActionDispatch::IntegrationTest
  test "should get main" do
    get ellicotcity_main_url
    assert_response :success
  end

  test "should get partners" do
    get ellicotcity_partners_url
    assert_response :success
  end

end
