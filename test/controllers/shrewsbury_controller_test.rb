require 'test_helper'

class ShrewsburyControllerTest < ActionDispatch::IntegrationTest
  test "should get main" do
    get shrewsbury_main_url
    assert_response :success
  end

  test "should get partners" do
    get shrewsbury_partners_url
    assert_response :success
  end

end
