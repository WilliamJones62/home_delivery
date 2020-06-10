require 'test_helper'

class GermantownControllerTest < ActionDispatch::IntegrationTest
  test "should get main" do
    get germantown_main_url
    assert_response :success
  end

  test "should get partners" do
    get germantown_partners_url
    assert_response :success
  end

end
