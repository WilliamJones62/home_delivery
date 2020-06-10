require 'test_helper'

class ManchesterbytheseaControllerTest < ActionDispatch::IntegrationTest
  test "should get main" do
    get manchesterbythesea_main_url
    assert_response :success
  end

  test "should get partners" do
    get manchesterbythesea_partners_url
    assert_response :success
  end

end
