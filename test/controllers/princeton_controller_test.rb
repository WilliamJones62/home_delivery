require 'test_helper'

class PrincetonControllerTest < ActionDispatch::IntegrationTest
  test "should get main" do
    get princeton_main_url
    assert_response :success
  end

  test "should get partners" do
    get princeton_partners_url
    assert_response :success
  end

end
