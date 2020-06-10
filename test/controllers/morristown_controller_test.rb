require 'test_helper'

class MorristownControllerTest < ActionDispatch::IntegrationTest
  test "should get main" do
    get morristown_main_url
    assert_response :success
  end

  test "should get partners" do
    get morristown_partners_url
    assert_response :success
  end

end
