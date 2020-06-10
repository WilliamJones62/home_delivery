require 'test_helper'

class BedfordNyControllerTest < ActionDispatch::IntegrationTest
  test "should get main" do
    get bedford_ny_main_url
    assert_response :success
  end

  test "should get partners" do
    get bedford_ny_partners_url
    assert_response :success
  end

end
