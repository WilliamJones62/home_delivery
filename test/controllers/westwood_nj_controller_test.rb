require 'test_helper'

class WestwoodNjControllerTest < ActionDispatch::IntegrationTest
  test "should get main" do
    get westwood_nj_main_url
    assert_response :success
  end

  test "should get partners" do
    get westwood_nj_partners_url
    assert_response :success
  end

end
