require 'test_helper'

class MarlboroughControllerTest < ActionDispatch::IntegrationTest
  test "should get main" do
    get marlborough_main_url
    assert_response :success
  end

  test "should get partners" do
    get marlborough_partners_url
    assert_response :success
  end

end
