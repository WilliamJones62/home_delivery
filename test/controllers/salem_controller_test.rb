require 'test_helper'

class SalemControllerTest < ActionDispatch::IntegrationTest
  test "should get main" do
    get salem_main_url
    assert_response :success
  end

  test "should get partners" do
    get salem_partners_url
    assert_response :success
  end

end
