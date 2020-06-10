require 'test_helper'

class FlorhamparkControllerTest < ActionDispatch::IntegrationTest
  test "should get main" do
    get florhampark_main_url
    assert_response :success
  end

  test "should get partners" do
    get florhampark_partners_url
    assert_response :success
  end

end
