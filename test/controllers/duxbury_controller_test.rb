require 'test_helper'

class DuxburyControllerTest < ActionDispatch::IntegrationTest
  test "should get main" do
    get duxbury_main_url
    assert_response :success
  end

  test "should get partners" do
    get duxbury_partners_url
    assert_response :success
  end

end
