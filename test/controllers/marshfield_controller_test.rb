require 'test_helper'

class MarshfieldControllerTest < ActionDispatch::IntegrationTest
  test "should get main" do
    get marshfield_main_url
    assert_response :success
  end

  test "should get partners" do
    get marshfield_partners_url
    assert_response :success
  end

end
