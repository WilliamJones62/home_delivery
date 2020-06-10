require 'test_helper'

class MarbleheadControllerTest < ActionDispatch::IntegrationTest
  test "should get main" do
    get marblehead_main_url
    assert_response :success
  end

  test "should get partners" do
    get marblehead_partners_url
    assert_response :success
  end

end
