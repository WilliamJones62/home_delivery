require 'test_helper'

class MendhamControllerTest < ActionDispatch::IntegrationTest
  test "should get main" do
    get mendham_main_url
    assert_response :success
  end

  test "should get partners" do
    get mendham_partners_url
    assert_response :success
  end

end
