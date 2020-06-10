require 'test_helper'

class DedhamControllerTest < ActionDispatch::IntegrationTest
  test "should get main" do
    get dedham_main_url
    assert_response :success
  end

  test "should get partners" do
    get dedham_partners_url
    assert_response :success
  end

end
