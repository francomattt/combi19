require "application_system_test_case"

class CombisTest < ApplicationSystemTestCase
  setup do
    @combi = combis(:one)
  end

  test "visiting the index" do
    visit combis_url
    assert_selector "h1", text: "Combis"
  end

  test "creating a Combi" do
    visit combis_url
    click_on "New Combi"

    fill_in "Bus type", with: @combi.bus_type
    fill_in "Cap", with: @combi.cap
    fill_in "Model", with: @combi.model
    fill_in "Registration plate", with: @combi.registration_plate
    fill_in "User", with: @combi.user_id
    click_on "Create Combi"

    assert_text "Combi was successfully created"
    click_on "Back"
  end

  test "updating a Combi" do
    visit combis_url
    click_on "Edit", match: :first

    fill_in "Bus type", with: @combi.bus_type
    fill_in "Cap", with: @combi.cap
    fill_in "Model", with: @combi.model
    fill_in "Registration plate", with: @combi.registration_plate
    fill_in "User", with: @combi.user_id
    click_on "Update Combi"

    assert_text "Combi was successfully updated"
    click_on "Back"
  end

  test "destroying a Combi" do
    visit combis_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Combi was successfully destroyed"
  end
end
