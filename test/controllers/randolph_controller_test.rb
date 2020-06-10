require 'test_helper'

class RandolphControllerTest < ActionDispatch::IntegrationTest
  test "should get main" do
    get randolph_main_url
    assert_response :success
  end

end
