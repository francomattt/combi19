require "application_system_test_case"

class WaysTest < ApplicationSystemTestCase
  setup do
    @way = ways(:one)
  end

  test "visiting the index" do
    visit ways_url
    assert_selector "h1", text: "Ways"
  end

  test "creating a Way" do
    visit ways_url
    click_on "New Way"

    fill_in "Deleted at", with: @way.deleted_at
    fill_in "Description", with: @way.description
    fill_in "End", with: @way.end
    fill_in "Start", with: @way.start
    click_on "Create Way"

    assert_text "Way was successfully created"
    click_on "Back"
  end

  test "updating a Way" do
    visit ways_url
    click_on "Edit", match: :first

    fill_in "Deleted at", with: @way.deleted_at
    fill_in "Description", with: @way.description
    fill_in "End", with: @way.end
    fill_in "Start", with: @way.start
    click_on "Update Way"

    assert_text "Way was successfully updated"
    click_on "Back"
  end

  test "destroying a Way" do
    visit ways_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Way was successfully destroyed"
  end
end
