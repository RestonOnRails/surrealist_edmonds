require 'test_helper'

class LotteryInfosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @lottery_info = lottery_infos(:one)
  end

  test "should get index" do
    get lottery_infos_url
    assert_response :success
  end

  test "should get new" do
    get new_lottery_info_url
    assert_response :success
  end

  test "should create lottery_info" do
    assert_difference('LotteryInfo.count') do
      post lottery_infos_url, params: { lottery_info: { lottery_date: @lottery_info.lottery_date, lottery_number: @lottery_info.lottery_number, lottery_type: @lottery_info.lottery_type, purchase_cost: @lottery_info.purchase_cost, store: @lottery_info.store, user_id: @lottery_info.user_id } }
    end

    assert_redirected_to lottery_info_url(LotteryInfo.last)
  end

  test "should show lottery_info" do
    get lottery_info_url(@lottery_info)
    assert_response :success
  end

  test "should get edit" do
    get edit_lottery_info_url(@lottery_info)
    assert_response :success
  end

  test "should update lottery_info" do
    patch lottery_info_url(@lottery_info), params: { lottery_info: { lottery_date: @lottery_info.lottery_date, lottery_number: @lottery_info.lottery_number, lottery_type: @lottery_info.lottery_type, purchase_cost: @lottery_info.purchase_cost, store: @lottery_info.store, user_id: @lottery_info.user_id } }
    assert_redirected_to lottery_info_url(@lottery_info)
  end

  test "should destroy lottery_info" do
    assert_difference('LotteryInfo.count', -1) do
      delete lottery_info_url(@lottery_info)
    end

    assert_redirected_to lottery_infos_url
  end
end
