require 'test_helper'

class AshburnControllerTest < ActionDispatch::IntegrationTest
  test "should get main" do
    get ashburn_main_url
    assert_response :success
  end

  test "should get partners" do
    get ashburn_partners_url
    assert_response :success
  end

end
