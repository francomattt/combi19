require 'test_helper'

class CreditCard2sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @credit_card2 = credit_card2s(:one)
  end

  test "should get index" do
    get credit_card2s_url
    assert_response :success
  end

  test "should get new" do
    get new_credit_card2_url
    assert_response :success
  end

  test "should create credit_card2" do
    assert_difference('CreditCard2.count') do
      post credit_card2s_url, params: { credit_card2: { cvc: @credit_card2.cvc, last_name: @credit_card2.last_name, name: @credit_card2.name, number: @credit_card2.number } }
    end

    assert_redirected_to credit_card2_url(CreditCard2.last)
  end

  test "should show credit_card2" do
    get credit_card2_url(@credit_card2)
    assert_response :success
  end

  test "should get edit" do
    get edit_credit_card2_url(@credit_card2)
    assert_response :success
  end

  test "should update credit_card2" do
    patch credit_card2_url(@credit_card2), params: { credit_card2: { cvc: @credit_card2.cvc, last_name: @credit_card2.last_name, name: @credit_card2.name, number: @credit_card2.number } }
    assert_redirected_to credit_card2_url(@credit_card2)
  end

  test "should destroy credit_card2" do
    assert_difference('CreditCard2.count', -1) do
      delete credit_card2_url(@credit_card2)
    end

    assert_redirected_to credit_card2s_url
  end
end
