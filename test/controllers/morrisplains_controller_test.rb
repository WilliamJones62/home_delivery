require 'test_helper'

class MorrisplainsControllerTest < ActionDispatch::IntegrationTest
  test "should get main" do
    get morrisplains_main_url
    assert_response :success
  end

  test "should get partners" do
    get morrisplains_partners_url
    assert_response :success
  end

end
