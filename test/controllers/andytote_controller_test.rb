require 'test_helper'

class AndytoteControllerTest < ActionDispatch::IntegrationTest
  test "should get main" do
    get andytote_main_url
    assert_response :success
  end

end
