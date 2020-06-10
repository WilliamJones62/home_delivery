require 'test_helper'

class NorthboroughControllerTest < ActionDispatch::IntegrationTest
  test "should get main" do
    get northborough_main_url
    assert_response :success
  end

  test "should get partners" do
    get northborough_partners_url
    assert_response :success
  end

end
