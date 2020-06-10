require 'test_helper'

class NantickControllerTest < ActionDispatch::IntegrationTest
  test "should get main" do
    get nantick_main_url
    assert_response :success
  end

  test "should get partners" do
    get nantick_partners_url
    assert_response :success
  end

end
