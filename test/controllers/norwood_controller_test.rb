require 'test_helper'

class NorwoodControllerTest < ActionDispatch::IntegrationTest
  test "should get main" do
    get norwood_main_url
    assert_response :success
  end

  test "should get partners" do
    get norwood_partners_url
    assert_response :success
  end

end
