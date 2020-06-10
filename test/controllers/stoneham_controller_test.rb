require 'test_helper'

class StonehamControllerTest < ActionDispatch::IntegrationTest
  test "should get main" do
    get stoneham_main_url
    assert_response :success
  end

  test "should get partners" do
    get stoneham_partners_url
    assert_response :success
  end

end
