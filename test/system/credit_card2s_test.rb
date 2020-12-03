require "application_system_test_case"

class CreditCard2sTest < ApplicationSystemTestCase
  setup do
    @credit_card2 = credit_card2s(:one)
  end

  test "visiting the index" do
    visit credit_card2s_url
    assert_selector "h1", text: "Credit Card2s"
  end

  test "creating a Credit card2" do
    visit credit_card2s_url
    click_on "New Credit Card2"

    fill_in "Cvc", with: @credit_card2.cvc
    fill_in "Last name", with: @credit_card2.last_name
    fill_in "Name", with: @credit_card2.name
    fill_in "Number", with: @credit_card2.number
    click_on "Create Credit card2"

    assert_text "Credit card2 was successfully created"
    click_on "Back"
  end

  test "updating a Credit card2" do
    visit credit_card2s_url
    click_on "Edit", match: :first

    fill_in "Cvc", with: @credit_card2.cvc
    fill_in "Last name", with: @credit_card2.last_name
    fill_in "Name", with: @credit_card2.name
    fill_in "Number", with: @credit_card2.number
    click_on "Update Credit card2"

    assert_text "Credit card2 was successfully updated"
    click_on "Back"
  end

  test "destroying a Credit card2" do
    visit credit_card2s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Credit card2 was successfully destroyed"
  end
end
