require 'test_helper'

class KatonahControllerTest < ActionDispatch::IntegrationTest
  test "should get main" do
    get katonah_main_url
    assert_response :success
  end

  test "should get partners" do
    get katonah_partners_url
    assert_response :success
  end

end
