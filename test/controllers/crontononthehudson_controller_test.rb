require 'test_helper'

class CrontononthehudsonControllerTest < ActionDispatch::IntegrationTest
  test "should get main" do
    get crontononthehudson_main_url
    assert_response :success
  end

  test "should get partners" do
    get crontononthehudson_partners_url
    assert_response :success
  end

end
