require 'test_helper'

class BedfordhillsControllerTest < ActionDispatch::IntegrationTest
  test "should get main" do
    get bedfordhills_main_url
    assert_response :success
  end

  test "should get partners" do
    get bedfordhills_partners_url
    assert_response :success
  end

end
