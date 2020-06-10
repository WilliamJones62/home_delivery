require 'test_helper'

class LawrencevilleControllerTest < ActionDispatch::IntegrationTest
  test "should get main" do
    get lawrenceville_main_url
    assert_response :success
  end

  test "should get partners" do
    get lawrenceville_partners_url
    assert_response :success
  end

end
