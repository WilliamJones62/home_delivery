require 'test_helper'

class BriarcliffmanorControllerTest < ActionDispatch::IntegrationTest
  test "should get main" do
    get briarcliffmanor_main_url
    assert_response :success
  end

  test "should get partners" do
    get briarcliffmanor_partners_url
    assert_response :success
  end

end
