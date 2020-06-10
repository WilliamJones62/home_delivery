require 'test_helper'

class EastwindsorControllerTest < ActionDispatch::IntegrationTest
  test "should get main" do
    get eastwindsor_main_url
    assert_response :success
  end

  test "should get partners" do
    get eastwindsor_partners_url
    assert_response :success
  end

end
