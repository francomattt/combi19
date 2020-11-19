require "application_system_test_case"

class InsumosTest < ApplicationSystemTestCase
  setup do
    @insumo = insumos(:one)
  end

  test "visiting the index" do
    visit insumos_url
    assert_selector "h1", text: "Insumos"
  end

  test "creating a Insumo" do
    visit insumos_url
    click_on "New Insumo"

    fill_in "Cant", with: @insumo.cant
    fill_in "Type", with: @insumo.type
    click_on "Create Insumo"

    assert_text "Insumo was successfully created"
    click_on "Back"
  end

  test "updating a Insumo" do
    visit insumos_url
    click_on "Edit", match: :first

    fill_in "Cant", with: @insumo.cant
    fill_in "Type", with: @insumo.type
    click_on "Update Insumo"

    assert_text "Insumo was successfully updated"
    click_on "Back"
  end

  test "destroying a Insumo" do
    visit insumos_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Insumo was successfully destroyed"
  end
end
