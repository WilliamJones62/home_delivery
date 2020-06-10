require 'test_helper'

class HerndonControllerTest < ActionDispatch::IntegrationTest
  test "should get main" do
    get herndon_main_url
    assert_response :success
  end

  test "should get partners" do
    get herndon_partners_url
    assert_response :success
  end

end
