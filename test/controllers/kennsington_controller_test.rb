require 'test_helper'

class KennsingtonControllerTest < ActionDispatch::IntegrationTest
  test "should get main" do
    get kennsington_main_url
    assert_response :success
  end

  test "should get partners" do
    get kennsington_partners_url
    assert_response :success
  end

end
