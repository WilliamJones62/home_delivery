require 'test_helper'

class HomedeliveryReferalsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @homedelivery_referal = homedelivery_referals(:one)
  end

  test "should get index" do
    get homedelivery_referals_url
    assert_response :success
  end

  test "should get new" do
    get new_homedelivery_referal_url
    assert_response :success
  end

  test "should create homedelivery_referal" do
    assert_difference('HomedeliveryReferal.count') do
      post homedelivery_referals_url, params: { homedelivery_referal: { contact_info_1: @homedelivery_referal.contact_info_1, contact_info_2: @homedelivery_referal.contact_info_2, contact_info_3: @homedelivery_referal.contact_info_3, contact_method_1: @homedelivery_referal.contact_method_1, contact_method_2: @homedelivery_referal.contact_method_2, contact_method_3: @homedelivery_referal.contact_method_3, contact_name: @homedelivery_referal.contact_name, referred_by: @homedelivery_referal.referred_by, relationship: @homedelivery_referal.relationship } }
    end

    assert_redirected_to homedelivery_referal_url(HomedeliveryReferal.last)
  end

  test "should show homedelivery_referal" do
    get homedelivery_referal_url(@homedelivery_referal)
    assert_response :success
  end

  test "should get edit" do
    get edit_homedelivery_referal_url(@homedelivery_referal)
    assert_response :success
  end

  test "should update homedelivery_referal" do
    patch homedelivery_referal_url(@homedelivery_referal), params: { homedelivery_referal: { contact_info_1: @homedelivery_referal.contact_info_1, contact_info_2: @homedelivery_referal.contact_info_2, contact_info_3: @homedelivery_referal.contact_info_3, contact_method_1: @homedelivery_referal.contact_method_1, contact_method_2: @homedelivery_referal.contact_method_2, contact_method_3: @homedelivery_referal.contact_method_3, contact_name: @homedelivery_referal.contact_name, referred_by: @homedelivery_referal.referred_by, relationship: @homedelivery_referal.relationship } }
    assert_redirected_to homedelivery_referal_url(@homedelivery_referal)
  end

  test "should destroy homedelivery_referal" do
    assert_difference('HomedeliveryReferal.count', -1) do
      delete homedelivery_referal_url(@homedelivery_referal)
    end

    assert_redirected_to homedelivery_referals_url
  end
end
