require 'test_helper'

class RivervaleControllerTest < ActionDispatch::IntegrationTest
  test "should get main" do
    get rivervale_main_url
    assert_response :success
  end

  test "should get partners" do
    get rivervale_partners_url
    assert_response :success
  end

end
