require 'test_helper'

class ToteControllerTest < ActionDispatch::IntegrationTest
  test "should get main" do
    get tote_main_url
    assert_response :success
  end

end
