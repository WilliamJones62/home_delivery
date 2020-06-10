require 'test_helper'

class ChantillyControllerTest < ActionDispatch::IntegrationTest
  test "should get main" do
    get chantilly_main_url
    assert_response :success
  end

  test "should get partners" do
    get chantilly_partners_url
    assert_response :success
  end

end
