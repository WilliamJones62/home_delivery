require 'test_helper'

class BristolControllerTest < ActionDispatch::IntegrationTest
  test "should get main" do
    get bristol_main_url
    assert_response :success
  end

  test "should get partners" do
    get bristol_partners_url
    assert_response :success
  end

end
