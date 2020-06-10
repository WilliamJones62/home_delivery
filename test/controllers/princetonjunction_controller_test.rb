require 'test_helper'

class PrincetonjunctionControllerTest < ActionDispatch::IntegrationTest
  test "should get main" do
    get princetonjunction_main_url
    assert_response :success
  end

  test "should get partners" do
    get princetonjunction_partners_url
    assert_response :success
  end

end
