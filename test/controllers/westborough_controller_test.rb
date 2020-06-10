require 'test_helper'

class WestboroughControllerTest < ActionDispatch::IntegrationTest
  test "should get main" do
    get westborough_main_url
    assert_response :success
  end

  test "should get partners" do
    get westborough_partners_url
    assert_response :success
  end

end
