require 'test_helper'

class RamseyControllerTest < ActionDispatch::IntegrationTest
  test "should get main" do
    get ramsey_main_url
    assert_response :success
  end

  test "should get partners" do
    get ramsey_partners_url
    assert_response :success
  end

end
