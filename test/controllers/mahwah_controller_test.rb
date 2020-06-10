require 'test_helper'

class MahwahControllerTest < ActionDispatch::IntegrationTest
  test "should get main" do
    get mahwah_main_url
    assert_response :success
  end

  test "should get partners" do
    get mahwah_partners_url
    assert_response :success
  end

end
