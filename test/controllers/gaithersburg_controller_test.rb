require 'test_helper'

class GaithersburgControllerTest < ActionDispatch::IntegrationTest
  test "should get main" do
    get gaithersburg_main_url
    assert_response :success
  end

  test "should get partners" do
    get gaithersburg_partners_url
    assert_response :success
  end

end
