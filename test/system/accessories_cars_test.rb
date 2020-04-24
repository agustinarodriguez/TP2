require "application_system_test_case"

class AccessoriesCarsTest < ApplicationSystemTestCase
  setup do
    @accessories_car = accessories_cars(:one)
  end

  test "visiting the index" do
    visit accessories_cars_url
    assert_selector "h1", text: "Accessories Cars"
  end

  test "creating a Accessories car" do
    visit accessories_cars_url
    click_on "New Accessories Car"

    fill_in "Name", with: @accessories_car.name
    click_on "Create Accessories car"

    assert_text "Accessories car was successfully created"
    click_on "Back"
  end

  test "updating a Accessories car" do
    visit accessories_cars_url
    click_on "Edit", match: :first

    fill_in "Name", with: @accessories_car.name
    click_on "Update Accessories car"

    assert_text "Accessories car was successfully updated"
    click_on "Back"
  end

  test "destroying a Accessories car" do
    visit accessories_cars_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Accessories car was successfully destroyed"
  end
end
