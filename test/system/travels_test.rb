require "application_system_test_case"

class TravelsTest < ApplicationSystemTestCase
  setup do
    @travel = travels(:one)
  end

  test "visiting the index" do
    visit travels_url
    assert_selector "h1", text: "Travels"
  end

  test "creating a Travel" do
    visit travels_url
    click_on "New Travel"

    fill_in "Combi", with: @travel.combi_id
    fill_in "State", with: @travel.state_id
    fill_in "Travel day", with: @travel.travel_day
    fill_in "Travel hour", with: @travel.travel_hour
    fill_in "Way", with: @travel.way_id
    click_on "Create Travel"

    assert_text "Travel was successfully created"
    click_on "Back"
  end

  test "updating a Travel" do
    visit travels_url
    click_on "Edit", match: :first

    fill_in "Combi", with: @travel.combi_id
    fill_in "State", with: @travel.state_id
    fill_in "Travel day", with: @travel.travel_day
    fill_in "Travel hour", with: @travel.travel_hour
    fill_in "Way", with: @travel.way_id
    click_on "Update Travel"

    assert_text "Travel was successfully updated"
    click_on "Back"
  end

  test "destroying a Travel" do
    visit travels_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Travel was successfully destroyed"
  end
end
