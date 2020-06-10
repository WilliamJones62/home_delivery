require 'test_helper'

class NorthbethesdaControllerTest < ActionDispatch::IntegrationTest
  test "should get main" do
    get northbethesda_main_url
    assert_response :success
  end

  test "should get partners" do
    get northbethesda_partners_url
    assert_response :success
  end

end
